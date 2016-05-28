# Preview all emails at http://localhost:3000/rails/mailers/emailer
class EmailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/emailer/send
  def send
    Emailer.send
  end

end
