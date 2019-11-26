class PaymentMailer < ActionMailer::Base
    layout 'payment_mailer'
    default from: 'Learn with <iradupeteryves@gmail.com>'
    
    def payment_receipt payment
        @payment=payment
        mail to: payment.email, subject: "THanks for your Payment We hope you get full understanding to this lesson"
    end
  end
  