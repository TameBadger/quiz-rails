class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :title
      t.string :option
      t.string :short
      t.string :description

      t.timestamps
    end
  end
end
