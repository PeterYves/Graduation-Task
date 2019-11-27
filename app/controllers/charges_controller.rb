class ChargesController < ApplicationController
    def new
    end
    
    def create
    course= Course.first
    
    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source => params[:stripeToken]
    )
    
    charge = Stripe::Charge.create(
    :customer => customer.id,
    :amount => course.price_in_cents,
    :description => "Rails Stripe customer",
    :currency => "usd"
    )

    payment= Payment.create(email: params[:stripeEmail],card: params[:stripeToken],
        amount: course.price_in_cents,description: course.description,currency: charge.currency,
        user_id: customer.id,course_id: course.id, uuid: SecureRandom.uuid)

        redirect_to payment
    
    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
    end
end
