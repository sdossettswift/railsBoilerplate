class ExampleMailer < ApplicationMailer
  default from:  ENV['gmail_user_name']

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email!')
  end
end
