def forgot_password(user)
  @user = user
  @greeting = "Hi"
  mail to: user.name, :subject => 'Reset password instructions'
end