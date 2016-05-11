class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_admin #, :authenticate_user!

  def check_admin
  	if !User.exists?(:isAdmin=>true)
  		User.create!(:email=>"dormus@gmail.com", :password=>"123456", :password_confirmation=>"123456", :isAdmin=>true)
  	end
  end

  def after_sign_in_path_for(resource)
  	if resource.isAdmin
	  	root_path
	  elsif resource.isParent
	  	show_dormer_path(resource.user_type.applicant)
    else
      show_dormer_path(resource.user_type)
	  end
	end
end