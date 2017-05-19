class NotifierMailer < ApplicationMailer

    default from: 'bdshoneye@gmail.com'
 
    def welcome_email(user)
        @user = user
        @url  = 'http://localhost:3000/login'
        mail(to: @user.email, subject: 'Welcome to My GA Thread')
    end

end
