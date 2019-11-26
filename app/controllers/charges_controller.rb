class ChargesController < ApplicationController
    def new
    end
    
    def create
    
    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source => params[:stripeToken]
    )
    
    charge = Stripe::Charge.create(
    :customer => customer.id,
    :amount => params[:amount],
    :description => "Rails Stripe customer",
    :currency => "usd"
    )

    payment= Payment.create(email: params[:stripeEmail],card: params[:stripeToken],
        amount: params[:amount],description: charge.description,currency: charge.currency,
        customer_id: customer.id,product_id: 1, uuid: SecureRandom.uuid)

        redirect_to payment
    
    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
    end
end
