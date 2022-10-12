class CreateArtCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :art_customers do |t|

      t.timestamps
    end
  end
end
