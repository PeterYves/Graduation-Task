class Payment < ApplicationRecord
<<<<<<< HEAD
    after_create :email_payment
=======
    # after_create :email_payment
>>>>>>> parent of 760cace... correcting some css errors
    def to_param
        uuid
    end

<<<<<<< HEAD
    def email_payment
        PaymentMailer.payment_receipt(self) .deliver
    end
=======
    # def email_payment
    #     PaymentMailer.payment_receipt(self) .deliver
    # end
>>>>>>> parent of 760cace... correcting some css errors
end
