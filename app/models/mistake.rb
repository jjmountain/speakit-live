class Mistake < ApplicationRecord
  CATEGORIES = ["pronunciation", "grammar", "content", "word choice", "silence"]
  belongs_to :time_trial
  has_many :homeworks
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

end
