class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|

      t.timestamps
    end
  end
end
