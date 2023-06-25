-- Exercise List
local exercise_list = { 
	"push-ups",
	"crunches",
	"burpees",
	"jumping jacks",
	"bodyweight squats",
	"high knees",
	"plank jacks",
	"mountain climbers",
	"lunges",
	"tricep dips",
	"pull-ups",
	"jump squats",
	"jump rope"
}

-- Exercise Variables
local reps = 30
local rest_time = 10

-- Functions
function doExercise(exercise, reps)
	print("Do", reps, exercise)
	math.randomseed(os.time())
	for i = 1, reps do
		os.execute("sleep " .. math.random(1, 10))
		print("Done", i, exercise)
	end
end

function rest()
	print("Rest for", rest_time, "seconds")
	os.execute("sleep " .. rest_time)
	print("Rest finished")
end

-- Main Program

for _, exercise in ipairs(exercise_list) do
	doExercise(exercise, reps)
	rest()
	if _ % 7 == 0 then
		print("Take a longer break!")
		os.execute("sleep " .. rest_time*4)
	end
end

print("Workout complete!")