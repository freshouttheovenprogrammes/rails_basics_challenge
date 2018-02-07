require 'rails_helper'

describe "As a user" do
  context "on a student show page" do
    it "I can delete said student" do
      student = Student.create!(first_name: "Gergory", last_name: "Phulls")

      visit student_path(student)

      expect(page).to have_link('Delete')
      click_on('Delete')

      expect(current_path).to eq "/students"
      expect(page).to_not have_content(student.first_name)
      expect(page).to_not have_content(student.last_name)
    end
  end
end
