class PairAnswerSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :pair
  belongs_to :answer
  belongs_to :sheet
end
