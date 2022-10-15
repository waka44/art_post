class Art < ApplicationRecord
    
    belongs_to :customer
    has_many   :nices,   dependent: :destroy
    has_many   :art_customers
    has_many   :customers, through: :art_customers
    
    has_one_attached :image
    
    validates :image, presence: true
    
    def nice?(customer)
        nices.where(customer_id: customer.id).exists?
    end 
    
end
