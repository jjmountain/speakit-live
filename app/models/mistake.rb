class Mistake < ApplicationRecord
  MISTAKES = ["pronunciation", "grammar", "inaudible", "word choice", "incorrect answer"]
  belongs_to :time_trial
  validates :category, presence: true
end
