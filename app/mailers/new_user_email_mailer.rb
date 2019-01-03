class NewUserEmailMailer < ApplicationMailer
	default  from: 'sai.nyros@gmail.com'
    def notify_user(user)
		@user = user
		attachments.inline["Articles.png"] = File.read("#{Rails.root}/app/assets/images/logos/Articles.png")
		mail(to:@user.email,subject:"Signup confirmation") 
	end
	def notify_info(user)
		@user = user
		mail(to:@user.email,subject:"Thanks for registration") 
	end
	
end
