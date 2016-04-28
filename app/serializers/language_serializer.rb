class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :title, :option, :short, :description
end
