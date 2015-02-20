class WorkoutSession < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :participant, class_name: "User"

  has_many :exercise_activities

  has_many :exercises, through: :exercise_activities

  has_many :exercise_recommendations, through: :exercise_activities
  has_many :daily_workouts, through: :exercise_recommendations
  has_many :workout_programs, through: :daily_workouts
end
