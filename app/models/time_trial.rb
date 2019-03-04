class TimeTrial < ApplicationRecord
  belongs_to :lesson
  belongs_to :error
  belongs_to :attendance_a, class_name: 'Attendance', foreign_key: :attendance_a_id
  belongs_to :attendance_b, class_name: 'Attendance', foreign_key: :attendance_b_id

end
