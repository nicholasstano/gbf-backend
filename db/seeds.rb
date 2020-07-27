# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# User Seeds
aaron = User.create(username: "aaron", password: "aaron", teacher_name: "Aaron Aaron", is_teacher: false, is_coach: true, is_leader: true, organization: "NSA")
boris = User.create(username: "boris", password: "boris", teacher_name: "Boris Boris", is_teacher: true, is_coach: true, is_leader: false, organization: "NSA")
cathy = User.create(username: "cathy", password: "cathy", teacher_name: "Cathy Cathy", is_teacher: true, is_coach: true, is_leader: false, organization: "NSA")
donna = User.create(username: "donna", password: "donna", teacher_name: "Donna Donna", is_teacher: true, is_coach: false, is_leader: false, organization: "NSA")
earl = User.create(username: "earl", password: "earl", teacher_name: "Earl Earl", is_teacher: true, is_coach: false, is_leader: false, organization: "NSA")
francis = User.create(username: "francis", password: "francis", teacher_name: "Francis Francis", is_teacher: true, is_coach: false, is_leader: false, organization: "NSA")

# Teacher Coach Seeds
TeacherCoach.create(join_date: "2020-06-12T00:00:00.000Z", organization: "NSA", courses: "Algebra I", department: "Math", coachId: boris.id, teacherId: donna.id)
TeacherCoach.create(join_date: "2020-06-12T00:00:00.000Z", organization: "NSA", courses: "Geometry", department: "Math", coachId: boris.id, teacherId: earl.id)
TeacherCoach.create(join_date: "2020-06-12T00:00:00.000Z", organization: "NSA", courses: "Algebra II", department: "Math", coachId: cathy.id, teacherId: francis.id)
TeacherCoach.create(join_date: "2020-06-12T00:00:00.000Z", organization: "NSA", courses: "Calculus AB", department: "Math", coachId: aaron.id, teacherId: boris.id)
TeacherCoach.create(join_date: "2020-06-12T00:00:00.000Z", organization: "NSA", courses: "Calculus BC", department: "Math", coachId: aaron.id, teacherId: cathy.id)

# Move Seeds
routines = Move.create(phase: "Management - Phase I", name: "01. Routines & Procedures", description: "Plan & practice critical daily and weekly routines and procedures moment-by- moment: \n
o Explain to students what each routine means and what it will look like  \n
o Write out what the teacher and students will do at each step, and what will happen with students who don’t follow the routine. \n
Plan & practice the roll out: how to introduce routine for the first time: \n
o Plan the “I Do”: how you will model the routine \n
o Plan what you will do when students don’t get it right \n")
strongvoice = Move.create(phase: "Management - Phase I", name: "02. Strong Voice", description: "o Square Up, Stand Still: when giving instructions, stop moving and strike a formal pose \n
o Formal Register: when giving instructions, use formal register, including tone and word choice")
whattodo = Move.create(phase: "Management - Phase II", name: "03. What To Do", description: "o Economy of Language: give crisp instructions with as few words as possible (e.g. 3-word directions). \n
o Check for understanding on complex instructions.")
routines2 = Move.create(phase: "Management - Phase II", name: "04. Routines & Procedures 201", description: "   o Revise any routine that needs more attention to detail or is inefficient, with particular emphasis on what students and teachers are doing at each moment \n
o Do It Again: have students do the routine again if not done correctly the first time \n
o Cut it Short: know when to stop the Do It Again")
radar = Move.create(phase: "Management - Phase II", name: "05. Teacher Radar", description: "Know when students are off task. \n
Deliberately scan the room for on-task behavior: \n
   o Choose 3-4 “hot spots” (places where you have students who often get off task) to scan constantly \n
   o “Be Seen Looking”: crane your neck to appear to be seeing all corners of the room \n
Circulate the room with purpose (break the plane): \n
   o Move among the desks and around the perimeter \n
   o Stand at the corners: identify 3 spots on the perimeter of the room to which you can circulate to stand and monitor student work \n
   o Move away from the student who's speaking to monitor the whole room")

# Action Step Seeds
as1 = ActionStep.create(short_text: "Threshold", long_text: "Donna will stand in the threshold of her doorway when greeting students at the beginning of class.", date: "2020-06-12T00:00:00.000Z", move_id: routines.id, is_assigned: false, is_completed: false, teacherId: donna.id, coachId: boris.id)
as2 = ActionStep.create(short_text: "Square Up", long_text: "Earl will square up and stand still before delivering instructions to the class.", date: "2020-06-12T00:00:00.000Z", move_id: strongvoice.id, is_assigned: false, is_completed: false, teacherId: earl.id, coachId: boris.id)
as3 = ActionStep.create(short_text: "Strong Voice", long_text: "Francis will use strong voice when delivering instructions to students.", date: "2020-06-12T00:00:00.000Z", move_id: strongvoice.id, is_assigned: false, is_completed: false, teacherId: francis.id, coachId: cathy.id)

# Observation Seeds
obs1 = Observation.create(teacherId: donna.id, coachId: boris.id, date: "2020-06-12T00:00:00.000Z", move: routines.id, score: 3, notes: "Donna Notes", comments: "Donna Comments", is_released: false)
obs2 = Observation.create(teacherId: earl.id, coachId: boris.id, date: "2020-06-12T00:00:00.000Z", move: strongvoice.id, score: 2, notes: "Earl Notes", comments: "Earl Comments", is_released: false)
obs3 = Observation.create(teacherId: francis.id, coachId: cathy.id, date: "2020-06-12T00:00:00.000Z", move: strongvoice.id, score: 4, notes: "Francis Notes", comments: "Francis Comments", is_released: false)

# Feedback Seeds
Feedback.create(teacherId: donna.id, coachId: boris.id, date: "2020-06-12T00:00:00.000Z", observation_id: obs1.id, praise: "Nice Job Donna", quick_hits: "Do this Donna", action_step_id: as1.id, see_it: "See It Donna", name_it: "Name it Donna", do_it: "Do It Donna", is_released: false)
Feedback.create(teacherId: earl.id, coachId: boris.id, date: "2020-06-12T00:00:00.000Z", observation_id: obs2.id, praise: "Nice Job Earl", quick_hits: "Do this Earl", action_step_id: as2.id, see_it: "See It Earl", name_it: "Name it Earl", do_it: "Do It Earl", is_released: false)
Feedback.create(teacherId: francis.id, coachId: cathy.id, date: "2020-06-12T00:00:00.000Z", observation_id: obs3.id, praise: "Nice Job Francis", quick_hits: "Do this Francis", action_step_id: as3.id, see_it: "See It Francis", name_it: "Name it Francis", do_it: "Do It Francis", is_released: false)
