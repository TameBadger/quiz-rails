class StatementSerializer < ActiveModel::Serializer
  attributes :id, :option, :title
  has_one :pair
end
