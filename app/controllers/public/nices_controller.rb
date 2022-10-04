class Public::NicesController < ApplicationController
    
    def create
        @art_nice = Nice.new(customer_id: current_customer.id, art_id: params[:art_id])
        @art_nice.save
        redirect_to art_path(params[:art_id])
    end
    
    def destroy
        @art_nice = Nice.find_by(customer_id: current_customer.id, art_id: params[:art_id])
        @art_nice.destroy
        redirect_to art_path(params[:art_id])
    end
    
end
