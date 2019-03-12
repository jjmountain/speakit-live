class Mistake < ApplicationRecord
  CATEGORIES = ["pronunciation", "grammar", "content", "word choice", "silence"]
  belongs_to :time_trial
  has_many :homeworks, dependent: :destroy
  validates :category, presence: true
  after_create :generate_homeworks

  def generate_homeworks
    Homework.create(
      mistake: self,
      student: time_trial.attendance_a.student
    )

    Homework.create(
      mistake: self,
      student: time_trial.attendance_b.student
    )
  end

  def calculate_seconds
    return .created_at - time_trial.started_at.round(2)
  end

end
