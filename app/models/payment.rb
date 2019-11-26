class Payment < ApplicationRecord
    after_create :email_payment

    def to_param
        uuid
    end

    def email_payment
        PaymentMailer.payment_receipt(self) .deliver
    end
end
