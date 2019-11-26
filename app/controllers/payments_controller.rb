class PaymentsController < ApplicationController
    def show
        @payment=Payment.find(params[:id])
    end
end
