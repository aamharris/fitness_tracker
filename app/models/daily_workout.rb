class DailyWorkout < ActiveRecord::Base
  belongs_to :workout_program

  has_many :exercise_recommendations
  has_many :exercises, through: :exercise_recommendations

  has_many :exercise_activities, through: :exercise_recommendations
  has_many :workout_sessions, through: :exercise_activities
  has_many :participants, through: :workout_sessions
end
