class PaymentsController < ApplicationController
    def show
        @payment=Payment.find_by_uuid(params[:id])
        @course = Course.find(@payment.course_id)
    end
end
