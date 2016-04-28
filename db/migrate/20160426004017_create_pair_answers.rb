class CreatePairAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :pair_answers do |t|
      t.references :pair, foreign_key: true
      t.references :answer, foreign_key: true
      t.references :sheet, foreign_key: true

      t.timestamps
    end
  end
end
