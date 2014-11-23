require 'pry'
require 'json'

grades = JSON.parse(File.read("students.json"))

final_array = []
final_list = ''

grades["students"].each do |student|
  name = student["name"]
  student_grades = student["grades"]
  grades_sort = student["grades"].sort.reverse
  high_grade = grades_sort.first.to_i
  low_grade = grades_sort.last.to_i
  averages = student_grades.inject(:+) / student_grades.size.to_f
  final_list  << "#{name}: " +  "#{averages}\t #{high_grade}\t #{low_grade}\n"
end

final_array << final_list

puts final_array
