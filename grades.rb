require 'pry'
require 'json'

grades = JSON.parse(File.read("students.json"))

final_array = []
final_list = ''

grades["students"].each do |student|
  name = (student)["name"]
  grades_avg = (student["grades"])
  grades_sort = (student)["grades"].sort.reverse
  high_grade = grades_sort[0].to_i
  low_grade = grades_sort[-1].to_i
  averages = grades_avg.inject { |x, y| x + y }.to_f / grades_avg.size
  final_list  << "#{name}: " +  "#{averages}\t #{high_grade}\t #{low_grade}\n"
end

final_array << final_list

puts final_array
