class ApplicationMailer < ActionMailer::Base
  default from: ENV["GMAIL_USERNAME"]
  layout 'mailer'
  def notification_on_create(order)
      @order = order
      mail(to: @order.email, subject: "Comanda Curcumin")
  end

  def notification_medic(message)
  	  @message = message
      mail(to: 'curcumin.mailer@gmail.com', subject: "Sfatul medicului")
  end

  def notification_new_account(user)
      @user = user
      mail(to: user.email, subject: "Curcumin95 - Bine ai venit!")
  end

  def notification_delete_account(user)
      @user = user
      mail(to: user.email, subject: "Curcumin95 - Sper sa ne revedem!")
  end

end
