class CreateComentNs < ActiveRecord::Migration[6.1]
  def change
    create_table :coment_ns do |t|

      t.timestamps
    end
  end
end
