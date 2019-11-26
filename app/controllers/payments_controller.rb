class PaymentsController < ApplicationController
    def show
        @payment=Payment.find_by_uuid(params[:id])
    end
end
