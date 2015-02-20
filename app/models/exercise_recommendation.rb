class ExerciseRecommendation < ActiveRecord::Base
  belongs_to :daily_workout
  belongs_to :exercise
end
