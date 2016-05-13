class RegistrationsController < Devise::RegistrationsController
  
   def create
    build_resource(applicant_params)

    resource.save
    resource.update(stage: "Pending")
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: applicant_path(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  protected

  def sign_up(resource_name, resource)
    true
  end

  private
   # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_params
      params.require(:applicant).permit(:email, :last_name, :first_name, :middle_initial, :nickname, :image_path, :gender, :civil_status, :address, :contact_number, :landline_number, :nationality, :religion, :birthday, :school, :school_address, :major, :year, :medical_information, :personal_information, :guardian_name, :guardian_contact_number, :guardian_address, :guardian_email)
    end

end