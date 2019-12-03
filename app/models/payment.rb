class Payment < ApplicationRecord
    after_create :email_payment
    # after_create :notify_slack
    def to_param
        uuid
    end

    def email_payment
        PaymentMailer.payment_receipt(self) .deliver
    end

  # def notify_slack
  #   SlackNotifier::CLIENT.ping "🎉 New Payment To: #{description} 🎉"
  # end
end
