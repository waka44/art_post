class Public::ComentsController < ApplicationController
    
    def create
        art = Art.find(params[:art_id])
        coment = current_customer.art.new(coment_params)
        coment.art_id = art.id
        coment.save
        redirect_to public_art_path(art)
    end
    
    private
    
    def coment_params
        params.require(:coment).pemit(:coment)
    end
    
end
