class PaymentsController < ApplicationController
    before_action :authenticate_user!
    def show
        @payment=Payment.find_by_uuid(params[:id])
        @course = Course.find(@payment.course_id)
    end
    def index
      @payments=Payment.all
    end
    def destroy
      @payment=Payment.find_by_uuid(params[:id])
      @payment.destroy
      redirect_to payments_url, notice: 'Payment was successfully destroyed.'
    end
end
