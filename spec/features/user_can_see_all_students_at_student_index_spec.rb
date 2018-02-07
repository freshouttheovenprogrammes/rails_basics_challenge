require 'rails_helper'

describe "As a user" do
  context "at /students" do
    it "I can see all students" do
      student_1 = Student.create!(first_name: "Gergory", last_name: "Phulls")
      student_2 = Student.create!(first_name: "Jonas", last_name: "Pauls")
      student_3 = Student.create!(first_name: "Zac", last_name: "Phullmquist")
      student_4 = Student.create!(first_name: "Student", last_name: "McStduent")

      visit students_path

      expect(page).to have_content(student_1.first_name)
      expect(page).to have_content(student_1.last_name)
      expect(page).to have_content(student_2.first_name)
      expect(page).to have_content(student_2.last_name)
      expect(page).to have_content(student_3.first_name)
      expect(page).to have_content(student_3.last_name)
      expect(page).to have_content(student_4.first_name)
      expect(page).to have_content(student_4.last_name)

    end
  end
end
