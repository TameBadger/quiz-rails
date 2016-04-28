class QuizSheet < ActiveRecord::Base
	belongs_to :digital_fingerprint
	has_many :pair_answers, foreign_key: "sheet_id"
end