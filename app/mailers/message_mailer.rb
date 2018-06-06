class MessageMailer < ApplicationMailer
require 'mailgun'
require 'figaro'
    Figaro.load
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_us.subject
  #
  def contact (message)
    mg_client = Mailgun::Client.new Rails.application.credentials.dig(:mailgun, :mailgun_secret_api_key)
    message_params = {:from => message.email,
                      :to => Rails.application.credentials.dig(:mailgun, :email),
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message Rails.application.credentials.dig(:mailgun, :domain), message_params
    puts "done"
  end
end
