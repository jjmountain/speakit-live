class Mistake < ApplicationRecord
  CATEGORIES = ["pronunciation", "grammar", "content", "word choice", "silence"]
  belongs_to :time_trial
  validates :category, presence: true
end
