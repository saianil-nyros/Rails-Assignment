class NewUserEmailMailer < ApplicationMailer
	default to: -> { User.pluck(:email) },
          from: 'sai.nyros@gmail.com'
	 
	def notify_user(user)
		@user = user
		mail(to:@user.email,subject:"Signup confirmation") 
		
	end
end
