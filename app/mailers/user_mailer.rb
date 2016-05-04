class UserMailer < ApplicationMailer
	 default from: 'lorenzobautista4@gmail.com'
 
  def rejection_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: user.email, subject: 'DORMUS Occupancy Status')
  end
  def approval_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: user.email, subject: 'DORMUS Occupancy Status')
  end
end
