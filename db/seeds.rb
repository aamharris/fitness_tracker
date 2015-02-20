

brian = User.create(first_name: "Brian",
                    last_name: "Sheridan",
                    password: "brian",
                    image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xfp1/t31.0-8/778638_547388268615871_853443307_o.jpg"
                    )



workout_session1 = WorkoutSession.create(participant: brian)


brian_act1 = ExerciseActivity.create(workout_session: workout_session1, exercise: chest, sets: 5, reps: 10)
brian_act2=  ExerciseActivity.create(workout_session: workout_session1, exercise: biceps, sets: 5, reps: 10)
brian_act3 = ExerciseActivity.create(workout_session: workout_session1, exercise: squats, sets: 5, reps: 10)
brian_act4 = ExerciseActivity.create(workout_session: workout_session1, exercise: shoulders, sets: 5, reps: 10)


#------------------------------------------------------------------------------------------------------------------------


aaron = User.create(first_name: "Aaron",
                    last_name: "Harris",
                    password: "aaron",
                    image_url: "https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/1933877_730472939440_3471551_n.jpg?oh=deb8e6c08ada482d5b101d581ae875a9&oe=558433B6"
                    )

workout_session2 = WorkoutSession.create(participant: aaron)

aaron_act1 = ExerciseActivity.create(workout_session: workout_session2, exercise_recommendation: workoutplan1, exercise: cardio, distance: 1, sets: 5, reps: 10)
aaron_act2 = ExerciseActivity.create(workout_session: workout_session2, exercise_recommendation: workoutplan1, exercise: chest, sets: 5, reps: 10)
aaron_act3 = ExerciseActivity.create(workout_session: workout_session2, exercise_recommendation: workoutplan1, exercise: biceps, sets: 5, reps: 10)
aaron_act4 = ExerciseActivity.create(workout_session: workout_session2, exercise_recommendation: workoutplan1, exercise: squats, sets: 5, reps: 10)
aaron_act5 = ExerciseActivity.create(workout_session: workout_session2, exercise_recommendation: workoutplan1, exercise: shoulders, sets: 5, reps: 10)


t70x = WorkoutProgram.create(name: "T70x", description: "SWOLLLL in 70 days", difficulty: "extreme")

week1_monday = DailyWorkout.create(week: 1, day: "Monday", workout_program: t70x)

workoutplan1 = ExerciseRecommendation.create(distance: 1, exercise: cardio, daily_workout: week1_monday)
workoutplan1 = ExerciseRecommendation.create(sets: 5, reps: 10, rest: 2, exercise: chest, daily_workout: week1_monday)
workoutplan1 = ExerciseRecommendation.create(sets: 5, reps: 10, rest: 2, exercise: biceps, daily_workout: week1_monday)
workoutplan1 = ExerciseRecommendation.create(sets: 5, reps: 10, rest: 2, exercise: squats, daily_workout: week1_monday)
workoutplan1 = ExerciseRecommendation.create(sets: 5, reps: 10, rest: 2, exercise: shoulders, daily_workout: week1_monday)


#------------------------------------------------------------------------------------------------------------------------


cardio = Exercise.create(name: "Stair Master",
                         cateogry: "cardio",
                         description: "get cut bro",
                         machine: "stair master",
                         primary_muscle: "legs") 

chest = Exercise.create(name: "Barbell Bench Press",
                        category: "chest", 
                        description: "get buff bro",
                        machine: "bench press", 
                        primary_muscle: "chest",
                        second_muscle: "triceps")

biceps = Exercise.create(name: "Dumbbell Bicep Curls",
                         category: "arms", 
                         description: "get buff bro",
                         machine: "dumbbells", 
                         primary_muscle: "biceps",
                         second_muscle: "forearms")

squats = Exercise.create(name: "Barbell Squat",
                         category: "legs", 
                         description: "get buff bro",
                         machine: "squat rack", 
                         primary_muscle: "quadriceps",
                         second_muscle: "glutes")

shoulders = Exercise.create(name: "Arnold Dumbbell Press",
                            category: "shoulders", 
                            description: "get buff bro",
                            machine: "dumbbells", 
                            primary_muscle: "shoulders",
                            second_muscle: "triceps")























