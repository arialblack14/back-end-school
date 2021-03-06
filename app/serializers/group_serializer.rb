class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :lessons

  def lessons
    lesson_ids = scope.teacher_lessons.pluck(:lesson_id)
    object.lessons.includes(:lesson_dates).where('lessons.id IN (?)', lesson_ids)
  end
end
