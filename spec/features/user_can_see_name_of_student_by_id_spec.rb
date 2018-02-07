require 'rails_helper'

describe "As a user" do
  context "when I go to a student id page" do
    it "I can see the students first and last name" do
      student_1 = Student.create!(first_name: "Gergory", last_name: "Phulls")

      visit student_path(student_1)

      expect(page).to have_content(student_1.first_name)
      expect(page).to have_content(student_1.last_name)
    end
  end
end
