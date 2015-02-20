class CreateInitialTables < ActiveRecord::Migration
  def change

    create_table :users do |t| #done
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_hash
      t.text :image_url
    end

    create_table :galleries do |t| #done
      t.string :name
      t.text :description
      t.text :image_url

      t.references :owner

      t.timestamps
    end

    create_table :relationships do |t| #done
      t.references :first_user
      t.references :second_user
    end

    create_table :meetups do |t| # done
      t.string :location
      t.text :description
      t.string :tags
      t.integer :creator

      t.timestamps
    end

    create_table :weight_goals do |t| # done
      t.integer :current_weight
      t.integer :target_weight

      t.references :participant

      t.timestamps
    end

    create_table :workout_sessions do |t| #done
      t.references :participant
      t.references :meetup

      t.timestamps
    end

    create_table :exercise_activities do |t| # done
      t.string :distance
      t.string :reps
      t.string :sets

      t.references :exercise
      t.references :exercise_recommendation
      t.references :workout_session

      t.timestamps
    end


    create_table :exercises do |t| #done
      t.string :name
      t.string :category
      t.text :description
      t.string :machine
      t.string :primary_muscle
      t.string :secondary_muscle
      t.string :image
      t.text :video_link
    end

    create_table :exercise_recommendations do |t| #done
      t.string :distance
      t.string :reps
      t.string :sets
      t.string :rest

      t.references :exercise
      t.references :daily_workout

      t.timestamps
    end

    create_table :daily_workouts do |t| #done
      t.string :week
      t.string :day

      t.references :workout_program

      t.timestamps
    end

    create_table :workout_programs do |t| #done
      t.string :name
      t.text :description
      t.string :difficulty

      t.timestamps
    end

  end
end
