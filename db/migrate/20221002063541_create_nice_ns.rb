class CreateNiceNs < ActiveRecord::Migration[6.1]
  def change
    create_table :nice_ns do |t|

      t.timestamps
    end
  end
end
