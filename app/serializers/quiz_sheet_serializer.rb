class QuizSheetSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :pair_answers
  belongs_to :digital_fingerprint
end
