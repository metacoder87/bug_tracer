class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to GM CubeDesign's Bug Tracer app!")
  end
end
