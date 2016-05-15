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
  def food_email (food)
    @food_plans = food
    
    mail(to: 'dormcaterer@yahoo.com', subject: 'DORMUS Food Orders for #{Date.today}')
  end
end
