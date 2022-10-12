class Public::ArtsController < ApplicationController
    
    def new
        @art = Art.new
    end
    
    def create
        # byebug
        @art = Art.new(art_params)
        if @art.save!
        # 投稿一覧へ
        redirect_to public_arts_path
        else
            render new
        end
    end
    
    def destroy
        @art = Art.find(params[:id])
        @art.destroy
        redirect_to public_arts_path
    end
    
    def index
        @arts = Art.all
    end
    
    def show
        @customer = Customer.find(params[:id])
        @art = Art.find(params[:id])
    end
    
    def nice?(customer)
        nice.where(customer_id: customer.id).exists?
    end
    
    def edit
        @atr = Art.find(params[:id])
    end
    
    private
    # ストロングパロメータ
    def art_params
        params.require(:art).permit(:title, :body, :image ).merge(customer_id: current_customer.id)
    end
    
end
