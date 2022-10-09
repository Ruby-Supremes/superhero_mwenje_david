class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :strength, :hero_id, :power_id

  belongs_to :power
  belongs_to :hero
end
