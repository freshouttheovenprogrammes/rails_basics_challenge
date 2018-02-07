require 'rails_helper'

describe "As a user" do
  context "I can edit a student" do
    it "by going to the student edit page" do
      student_1 = Student.create!(first_name: "Gergory", last_name: "Phulls")

      visit students_path

      expect(page).to have_link 'Edit'
    end
  end
end
