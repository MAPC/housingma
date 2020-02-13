class Grouping < ActiveRecord::Base
  self.abstract_class = true
  validates :title,     presence:    true, length: { minimum: 3, maximum: 140 }
  validates :narrative, allow_blank: true, length: { minimum: 3, maximum: 8000 }

  default_scope { order(:sort_order).order(:id) }

  def to_s
    title
  end

  def slug
    title.parameterize
  end
end
