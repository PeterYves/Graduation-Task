class PaymentMailer < ActionMailer::Base
    layout 'payment_mailer'
    default from: "Learn with us <iradupeteryves@gmail.com>"
  
    def payment_receipt payment
        @payment = payment
        mail to: payment.email, subject: "thank you for learning with us"
    end
end
  