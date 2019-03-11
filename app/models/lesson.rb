class Lesson < ApplicationRecord
  belongs_to :teacher
  has_many :attendances, dependent: :destroy
  has_many :time_trials, through: :attendances # attendance.time_trials
  has_many :mistakes, through: :time_trials
  has_many :homeworks, through: :mistakes
  validates :learning_goal, presence: true
  validates :time_goal, presence: true
end
