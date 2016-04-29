json.array!(@applicants) do |applicant|
  json.extract! applicant, :id, :last_name, :first_name, :middle_initial, :nickname, :image_path, :gender, :civil_status, :address, :contact_number, :landline_number, :email, :nationality, :religion, :birthday, :school, :school_address, :major, :year, :medical_information, :personal_information, :guardian_name, :guardian_contact_number, :guardian_address, :guardian_email
  json.url applicant_url(applicant, format: :json)
end
