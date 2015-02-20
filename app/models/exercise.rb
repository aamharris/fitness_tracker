class Exercise < ActiveRecord::Base
  has_many :exercise_activities
  has_many :workout_sessions, through: :exercise_activities
  has_many :participants, through: :workout_sessions

  has_many :exercise_recommendations
  has_many :daily_workouts, through: :exercise_recommendations
  has_many :workout_programs, through: :daily_workouts
end
