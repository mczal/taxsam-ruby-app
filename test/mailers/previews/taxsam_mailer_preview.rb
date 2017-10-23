# Preview all emails at http://localhost:3000/rails/mailers/taxsam_mailer
class TaxsamMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    TaxsamMailer.sample_email('izalcavaliers@yahoo.co.id')
  end

  def contact_us_preview
    email = EmailInfo.new
    email.from = "mczal@yahoo.co.id"
    email.subject = "Preview Subject"
    email.body = "Hell nah bra, Hello bro. Good to see you bro !"
    email.name = "Mczal Ltd."
    TaxsamMailer.contact_us(email)
  end

end
