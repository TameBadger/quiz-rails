class PairAnswer < ActiveRecord::Base
	belongs_to :pair
	belongs_to :answer, class_name: "Statement", foreign_key: "answer_id"
	belongs_to :sheet, class_name: "QuizSheet", foreign_key: "sheet_id"
end