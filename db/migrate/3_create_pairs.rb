class CreatePairs < ActiveRecord::Migration[5.0]
  def change
    create_table :pairs do |t|

      t.timestamps
    end
  end
end
