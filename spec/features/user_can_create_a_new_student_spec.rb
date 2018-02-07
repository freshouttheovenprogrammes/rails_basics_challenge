require 'rails_helper'

describe "As a user" do
  context "I can visit students/new" do
    it "and add a new student" do

      visit new_student_path

      fill_in('student[first_name]', with: 'John')
      fill_in('student[last_name]', with: 'Maxx')
      click_on('Create Student')

      expect(page).to have_content('John Maxx')
    end

    it "if I don't enter all information" do

      visit new_student_path

      fill_in('student[first_name]', with: 'John')
      click_on('Create Student')

      expect(page).to have_content('You done messed up bud')
      expect(current_path).to eq('/students')
    end
  end
end
