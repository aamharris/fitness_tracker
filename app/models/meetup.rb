class Meetup < ActiveRecord::Base
  has_many: :workout_sessions
  has_many: :participants, through: :workout_sessions
end
