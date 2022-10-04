class Art < ApplicationRecord
    
    belongs_to :costomer
    has_many   :nices,   dependent: :destroy
    
    def nice?(customer)
        favorites.where(customer_id: customer.id).exists?
        
    
end
