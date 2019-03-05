class Lesson < ApplicationRecord
  belongs_to :teacher, optional: true
  has_many :attendances
  has_many :time_trials, through: :attendances
  validates :learning_goal, presence: true
  validates :time_goal, presence: true
  validates :start_time, presence: true
end
