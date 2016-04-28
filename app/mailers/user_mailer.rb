class UserMailer < ActionMailer::Base
  default from: 'notifications@blog.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Welcome to the Site')
  end
end
