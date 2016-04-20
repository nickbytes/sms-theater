class TmessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def client
    Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
  end

  def send_sms(to_phone_number, body)
    client.account.sms.messages.create(
      :from => "+16467132270",
      :to => to_phone_number,
      :body => body
    )
  end

  def create
    if params[:From] == "+16149060263"
      @tmessage = Tmessage.new
      @tmessage.text = params[:Body]
      @tmessage.user = 'Nick'
      @tmessage.save

      send_sms "+16149060263", params[:Body]
      # send_sms "+17202035148", params[:Body]
    end

    if params[:From] == "+17202035148"
      @tmessage = Tmessage.new
      @tmessage.text = params[:Body]
      @tmessage.user = 'John'
      @tmessage.save

      send_sms "+16149060263", params[:Body]
    end

    render nothing: true
  end

end
