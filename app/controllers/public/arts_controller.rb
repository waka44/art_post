class Public::ArtsController < ApplicationController
    
    def new
        @art = Art.new
    end
    
    def create
        art = Art.new(art_params)
        if art.save!
        # 投稿一覧へ
        redirect_to arts_path
        else
            @arts = Art.all
            render art_path
        end
    end
    
    def destroy
        art = Art.find(params[:id])
        art.destroy
        redirect_to art_path(@ari.id)
    end
    
    def index
        @arts = Art.all
    end
    
    def show
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
        params.require(:art).pemit(:title, :body, :image ).merge(customer_id: current_customer.id)
    end
    
end
