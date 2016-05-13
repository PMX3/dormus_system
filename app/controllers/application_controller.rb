class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.class == Admin
      applicants_path
    elsif resource.class == Parent
      show_dormer_path(resource.applicant_id)
    elsif resource.class == Applicant
      show_dormer_path(resource)
    end
  end

end