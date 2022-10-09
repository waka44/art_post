class Art < ApplicationRecord
    
    belongs_to :customer
    has_many   :nices,   dependent: :destroy
    
    has_one_attached :image
    
    validates :image, presence: true
    
    def nice?(customer)
        favorites.where(customer_id: customer.id).exists?
    end 
    
end
