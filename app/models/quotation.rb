class Quotation < ActiveRecord::Base
  validates :quote,     presence: true, length: { minimum: 3, maximum: 1700 }
  validates :author,    presence: true, length: { minimum: 3, maximum: 100 }
  validates :agency,    allow_blank: true, length: { minimum: 3, maximum: 180 }  
end
