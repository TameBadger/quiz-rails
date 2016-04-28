class DigitalFingerprintSerializer < ActiveModel::Serializer
  attributes :id, :fingerprint, :ua, :action
end
