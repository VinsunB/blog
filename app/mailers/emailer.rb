class Emailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.emailer.send.subject
  #
  def send_to_me(email, name, content)
    @content = content
    @email = email
    @name = name

    mail to: ENV["EMAIL"]
  end
end
