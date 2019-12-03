class ChargesController < ApplicationController
  before_action :authenticate_user!
  def new
  end
  
  def create
    course= Course.find(params[:course_id])
    
    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source => params[:stripeToken],
    :plan=>"lesson1"
    )

    payment= Payment.create(email: current_user.email,card: params[:stripeToken],
        amount: course.price_in_cents,description: course.name,currency: "usd",
        user_id: customer.id,course_id: course.id, uuid: SecureRandom.uuid)
        payment.save

        redirect_to payment
    
    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
