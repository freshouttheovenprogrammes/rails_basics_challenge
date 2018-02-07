require 'rails_helper'

describe "As a user" do
  it "when I'm on the students show I can get back to index" do
    student = Student.create!(first_name: "Zac", last_name: "Phullmquist")

    visit student_path(student)

    expect(page).to have_link('Index')
    click_on('Index')

    expect(current_path).to eq '/students'
  end
end
