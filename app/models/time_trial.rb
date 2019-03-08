class TimeTrial < ApplicationRecord
  mount_uploader :audio, AudioUploader
  belongs_to :lesson
  has_many :mistakes, dependent: :destroy
  belongs_to :attendance_a, class_name: 'Attendance', foreign_key: :attendance_a_id
  belongs_to :attendance_b, class_name: 'Attendance', foreign_key: :attendance_b_id
end
