class HousingData < ActiveRecord::Base
  self.table_name    = 'hpp_view'
  self.primary_key   = :muni_id

  belongs_to :municipality, foreign_key: 'muni_id'

  include HousingIndicators
end