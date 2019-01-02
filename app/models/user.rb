class User < ApplicationRecord
  has_secure_password
 
 validates :name, presence:true,uniqueness:true
 validates :email, presence:true
 validates :password, presence: true
 validates :password_confirmation, confirmation: { case_sensitive: true }

 def send_password_reset
  generate_token(:password_reset_token)
  self.password_reset_sent_at = Time.zone.now
  save!
  # UserMailer.forgot_password.deliver# This sends an e-mail with a link for the user to reset the password
end
# This generates a random password reset token for the user
def generate_token(column)
  begin
    self[column] = SecureRandom.urlsafe_base64
  end while User.exists?(column => self[column])
end
end