class MailSenderJob < ApplicationJob
  queue_as :default
   after_perform :send_info
	def perform(user)
 	puts "second Mail..."
    NewUserEmailMailer.notify_info(user).deliver_now
  end
  private
  def send_info
  	puts 'Mail sent!!!!!!!'
  end
end
