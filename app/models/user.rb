class User < ActiveRecord::Base
  # need to look into this more
  # has_many :relationships
  has_many :galleries, foreign_key: :owner_id
  has_many :weight_goals, foreign_key: :participant_id

  has_many :workout_sessions, foreign_key: :participant_id
  has_many :meetups, through: :workout_sessions

  has_many :exercise_activities, through: :workout_sessions
  has_many :exercises, through: :exercise_activities

  has_many :exercise_recommendations, through: :exercise_activities
  has_many :daily_workouts, through: :exercise_recommendations
  has_many :workout_programs, through: :daily_workouts



  validates :name, :length => { :minimum => 1, :message => "must be at least 3 characters!" }
  validates :password, :length => { :minimum => 6 }
  validates :email, :uniqueness => true, :format => /.+@.+\..+/

  def password
      @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
      @password = BCrypt::Password.create(new_password)
      self.password_hash = @password
  end

  def self.authenticate(email, password)
   user = User.find_by_email(email)
    return user if user && (user.password == password)
  end
end
