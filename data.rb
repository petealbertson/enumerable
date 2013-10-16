# Loading seed data

puts "\nLoading data for the previous TSL students.. "

load 'seeds.rb'

# def rid_@ = STUDENTS.each do |handle|
#   if (handle["twitter"]).include?("@")


# STUDENTS.each do |name|
#   puts "#{name}"
# end

# STUDENTS.each do |kid|
#   if kid["last_name"] == "Cabansag"
#   puts "name: #{kid["first_name"]} #{kid["last_name"]}"
#   puts "twitter: @#{kid["twitter"]}"
#   puts "github: #{kid["github"]}"
#   puts "blog: #{kid["blog"]}"
#   puts "email: #{kid["email"]}"
# end
# end

# CHALLENGE 1

# Using the each method and the STUDENTS array. Find Vince
# and return the following output:

# name: Vince Cabansag
# twitter: @vcabansag
# github: vcabansag
# blog: http://vincentcabansag.com
# email: vince@starterleague.com







# CHALLENGE 2

# Gather all of the Twitter handles into an array and show them on separate lines

# STUDENTS.select do |twits|
#   if twits["twitter"] == nil
#     print twits["twitter"]
#   else
#    if twits["twitter"].include?("@")
#    puts twits["twitter"]
#     else
#     puts "@" + twits["twitter"]
#   end
#   end
# end





# CHALLENGE 3

# Update your script so that you only show values of a person if they're present
# We don't want to see "blog: " or "github: "

# STUDENTS.each do |kid|
#   puts "name: #{kid["first_name"]} #{kid["last_name"]}"
#   if kid["twitter"] != nil
#     puts "twitter: #{kid["twitter"]}"
#   end
#   if kid["github"] != nil
#     puts "github: #{kid["github"]}"
#   end
#   if kid["blog"] != nil
#     puts "blog: #{kid["blog"]}"
#   end
#   if kid["email"] != nil
#     puts "email: #{kid["email"]}"
#   end
#   puts " "
# end









# CHALLENGE 4

# Refactor your code to use the .keys method to access the key value pairs
# We don't need to explicity type every key. Play around with the .keys method.





def delete_empties
  STUDENTS.each do |kid|
    kid.delete_if {|key, value| value == nil}
  end
end

def searchable
  delete_empties.each do |person|
    person.each do |key, value|
        puts "#{key}: #{value}"
    end
    puts " "
  end
end


puts "Enter search by last name here:"
answer = gets.chomp
searchable.select {|find| find[last_name] == answer}






  # puts ("name: #{vals[0]} #{vals[1]}")
  # puts ("twitter: #{vals[2]}")
  # puts ("github: #{vals[3]}")
  # puts ("blog: #{vals[4]}")
  # puts ("email: #{vals[5]}")

# end



# BONUS CHALLENGE 5

# Create a method to display the details of a student
# Create a method to find a student by first name
# Take into account that the data set may continue people with the same names

# Remember, methods can look like this

# def show_student_details

# end

# or this

# def show_student_details(student)

# end

