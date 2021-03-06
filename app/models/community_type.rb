class CommunityType < ActiveRecord::Base
  establish_connection ENV.fetch('COMMON_DB_URL')

  has_many :community_subtypes
  has_many :municipalities,    through: :community_subtypes
  has_many :housing_data,      through: :municipalities

  default_scope { includes(:community_subtypes).includes(:municipalities).includes(:housing_data) }

  def muni_names
    municipalities.map{|m| m.name}
  end

  def to_s
    name
  end

  include Aggregations
end
