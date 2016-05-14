class UserMailer < ApplicationMailer
	 default from: 'dormusph@gmail.com'
 
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
  def account_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: user.email, subject: 'DORMUS Account Creation')
  end
  def parent_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: user.email, subject: 'DORMUS Parent Account')
  end
end
