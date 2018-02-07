require 'rails_helper'

describe "As a user" do
  context "testing index links" do
    it "when I'm on the students show path I can get back to index" do
      student = Student.create!(first_name: "Zac", last_name: "Phullmquist")

      visit student_path(student)

      expect(page).to have_link('Index')
      click_on('Index')

      expect(current_path).to eq '/students'
    end

    it "when I'm on the students edit path I see both create students and all students link" do
      student = Student.create!(first_name: "Zac", last_name: "Phullmquist")

      visit edit_student_path(student)

      expect(page).to have_link('Index')
      expect(page).to have_link('Create New Student')

      click_on('Index')

      expect(current_path).to eq '/students'
    end

    it "when I'm on the students delete path I can get back to index" do
      student = Student.create!(first_name: "Zac", last_name: "Phullmquist")

      visit edit_student_path(student)

      expect(page).to have_link('Index')
      click_on('Index')

      expect(current_path).to eq '/students'
    end
  end
  context "all paths have create student link and take you there" do
      it "when I'm on the students index path I can create a new student" do
        visit students_path

        expect(page).to have_link('Create New Student')

        click_on ('Create New Student')

        expect(current_path).to eq '/students/new'
      end

      it "when I'm on the students edit path I can create a new student" do
        student = Student.create!(first_name: "Eva", last_name: "Toon")

        visit student_path(student)

        expect(page).to have_link('Create New Student')

        click_on ('Create New Student')

        expect(current_path).to eq '/students/new'
      end

      it "when I'm on the students index path I can create a new student" do
        visit students_path

        expect(page).to have_link('Create New Student')

        click_on ('Create New Student')

        expect(current_path).to eq '/students/new'
      end
    end
end
