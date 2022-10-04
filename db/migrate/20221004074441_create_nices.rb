class CreateNices < ActiveRecord::Migration[6.1]
  def change
    create_table :nices do |t|
      
      t.references :customer, null: false, foreign_key: true
      t.references :art,      null: false, foreign_key: true

      t.timestamps
    end
  end
end
