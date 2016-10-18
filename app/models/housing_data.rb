class HousingData < ActiveRecord::Base
  establish_connection ENV.fetch('HOUSING_DATA_DB_URL')
  self.table_name    = 'hpp_view'
  self.primary_key   = :muni_id

  belongs_to :municipality, foreign_key: 'muni_id'

  include HousingIndicators
end
