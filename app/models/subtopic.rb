class Subtopic < Grouping
  belongs_to :topic
  delegate   :topic_area, to: :topic, allow_nil: true
  has_many   :fields

  def slug
    "#{topic.slug}-" + super
  end
end