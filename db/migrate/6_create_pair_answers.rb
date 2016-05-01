class CreatePairAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :pair_answers do |t|
      t.references :pair, index: true
      t.references :answer, index: true
      t.references :sheet, index: true

      t.timestamps
    end
    add_foreign_key :pair_answers, :pairs, column: :pair_id
    add_foreign_key :pair_answers, :statements, column: :answer_id
    add_foreign_key :pair_answers, :quiz_sheets, column: :sheet_id
  end
end
