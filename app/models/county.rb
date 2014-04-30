class County < ActiveRecord::Base
  establish_connection 'commondata'

  has_many :municipalities

  include Aggregations
end