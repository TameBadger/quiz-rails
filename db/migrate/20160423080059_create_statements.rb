class CreateStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :statements do |t|
      t.string :option
      t.string :title
      t.references :pair, foreign_key: true

      t.timestamps
    end
  end
end
