class Attendance < ApplicationRecord
  belongs_to :lesson
  belongs_to :student
  # has_many :time_trials, -> (id) { where('time_trials.attendance_a_id = :id OR time_trials.attendance_b_id = :id', id: id) }

  def time_trials
    TimeTrial.where(attendance_a_id: id).or(TimeTrial.where(attendance_b_id: id))
  end
end
