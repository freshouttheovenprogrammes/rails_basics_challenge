# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach("./data/students.csv", headers: true) do |row|
  student = Movie.create(
                id: row[0],
                first_name: row[1],
                last_name: row[2])
                puts "Created #{student.id}"
end
