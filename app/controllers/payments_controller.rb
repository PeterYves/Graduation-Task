class PaymentsController < ApplicationController
    before_action :authenticate_user!
    before_action :create_only_if_admin, only: [:index]
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
    def create_only_if_admin
      if current_user.user_type == "learner"
        redirect_to courses_url, notice: 'You are not allowed to do this action'
    end
  end
end
