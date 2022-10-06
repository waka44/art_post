class Public::ArtsController < ApplicationController
    
    def new
        @art = Art.new
    end
    
    def create
        art = Art.new(art_params)
        art.save
        # 投稿一覧へ
        redirect_to 'arts'
    end
    
    def index
        @arts = Art.all
    end
    
    def show
    end
    
    def edit
    end
    
    private
    # ストロングパロメータ
    def art_params
        params.require(:art).pemit(:title, :body)
    end
    
end
