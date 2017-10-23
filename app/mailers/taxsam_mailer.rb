class TaxsamMailer < ApplicationMailer
	layout 'mailer'

  def to_admin
    "test@taxsam.co"
  end

  def from_client
    "no-reply@taxsam.co"
  end

  def sample_email(fromUser)
    mail(to: to_admin, from: fromUser, subject: "Sample Email" )
  end

  def contact_us(info)
    @from = info.from
    @subject = info.subject
    @message = info.body
    @name = info.name
    mail(
      to: to_admin,
      from: from_client,
      from_plain: info.from,
      subject: info.subject,
      message: info.body,
      name: info.name
    )
  end

end
