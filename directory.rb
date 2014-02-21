def print_header
	print "The students of my cohort at Makers Academy \n"
	print "-----------\n"
end

def input_students
  
  students = []
  # create an empty array

	print "Please enter a name of a student\n"
	# get the name
	name = gets.chop
  print "What cohort are you in?\n"
  cohort = gets.chop
  print "Where were you born?\n"
  # place of birth
  born = gets.chop
  print "What hobbies do you have?\n"
  # Hobbies
  hobbies = gets.chop
	# while the name is not empty, repeat this code

    name = "no first name given" if name.empty?
    cohort = "no cohort given" if cohort.empty?
    born = "no place of birth given" if born.empty?
    hobbies = "hobbies not given" if hobbies.empty?


	while !name.empty? do
	# add the student hash to the array
	   students << {:name => name, :cohort => cohort, :born => born, :hobbies => hobbies}
    

     if students.length > 1
	   print "Now we have #{students.length} students, any more to add?\n"
   else
     print "Now we have #{students.length} student, any more to add?\n"
   end


	   # get another name from the user
       print "Add another student?\n"
      continue = gets.chop.downcase
      if continue == "yes"
	       print "Please enter a name of a student\n"
        # get the name
          name = gets.chop
          print "What cohort are you in?\n"
          cohort = gets.chop
          print "Where were you born?\n"
      # place of birth
          born = gets.chop
          print "What hobbies do you have?\n"
      # Hobbies
          hobbies = gets.chop
              #no response given
              name = "no first name given" if name.empty?
              cohort = "no cohort given" if cohort.empty?
              born = "no place of birth given" if born.empty?
              hobbies = "hobbies not given" if hobbies.empty?
        else
          break
    end

	end

	# return the array of students
	students
end

def display(students)
  n = 0 
  while n < students.length
    print "#{students[n][:name]} (#{students[n][:cohort]} cohort) is from #{students[n][:born]} and enjoys #{students[n][:hobbies]}. \n".center(180)
    n += 1
  end
end



def print_footer(names)
  if names.length > 1
	print "Overall, we have #{names.length} great students\n".center(80)
else  print "Overall, we have #{names.length} great student\n".center(80)
end
end

#nothing happens until we call the method
students = input_students
print_header
display(students)
print_footer(students)  