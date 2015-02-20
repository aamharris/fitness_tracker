class ExerciseActivity < ActiveRecord::Base
  belongs_to :workout_session
  belongs_to :exercise
  belongs_to :exercise_recommendation

end
