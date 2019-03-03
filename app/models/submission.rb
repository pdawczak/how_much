class Submission < ApplicationRecord
  validates :education, :hours_per_week, :capital_gain, presence: true
  validates :education, :hours_per_week, :capital_gain, numericality: true
end
