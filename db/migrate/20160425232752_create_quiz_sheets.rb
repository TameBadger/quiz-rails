class CreateQuizSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_sheets do |t|
      t.string :title
      t.references :digital_fingerprint, foreign_key: true

      t.timestamps
    end
  end
end
