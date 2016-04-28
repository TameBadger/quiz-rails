class PairSerializer < ActiveModel::Serializer
  attributes :id
  has_many :statements
end
