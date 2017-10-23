class EmailsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :validate_params

  def contact_us
    @info = EmailInfo.new
    @info.subject = "Client Support - #{params[:email][:subject]}"
    @info.name = params[:email][:name]
    @info.body = params[:email][:body]
    @info.from = params[:email][:from]
    @info.id = 1
    TaxsamMailer.contact_us(@info).deliver_now

    render json: @info
  end

  def contact_us_options
    head :ok
  end

  private

  def validate_params
    params.require(:email).permit(:from, :subject, :name, :body)
    p params
    # params.require(:subject)
    # params.require(:name)
    # params.require(:body)
  end

end
