require 'rails_helper'

describe "As a user" do
  context "I can edit a student" do
    it "by going to the student edit page" do
      Student.create!(first_name: "Gergory", last_name: "Phulls")

      visit students_path

      expect(page).to have_link 'Edit'
    end

    it "when I click edit link on student/index" do
      student = Student.create!(first_name: "Gergory", last_name: "Phulls")

      visit students_path

      click_on('Edit')

      expect(current_path).to eq "/students/#{student.id}/edit"
      expect(page).to have_content "Edit Information for Gergory Phulls Here"

      fill_in('student[first_name]', with: 'John')
      fill_in('student[last_name]', with: 'John')
      click_button('Update Student')
      expect(current_path).to eq "/students/#{student.id}"
      expect(page).to have_content 'John John'
    end
  end
end
