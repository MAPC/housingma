class CommunitySubtype < ActiveRecord::Base
  establish_connection ENV.fetch('COMMON_DB_URL')

  belongs_to :community_type
  has_many   :municipalities

  include Aggregations
end
