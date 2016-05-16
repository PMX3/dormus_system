class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

  def after_sign_in_path_for(resource)
    if resource.class == Admin
      applicants_path
    elsif resource.class == Parent
      show_dormer_path(resource.applicant_id)
    elsif resource.class == Applicant
      show_dormer_path(resource)
    end
  end

  def layout_by_resource
    if devise_controller?
      "sidebar"
    else
      "application"
    end
  end
end