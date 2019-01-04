def forgot_password(user)
  @user = user
  mail (to: user.email, :subject => 'Reset password instructions')
  
end