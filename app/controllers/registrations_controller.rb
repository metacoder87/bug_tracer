class RegistrationsController < Devise::RegistrationsController
  def after_confirmation
    UserMailer.welcome_email(resource).deliver_now
    super # Call Devise's default behavior
  end
end
