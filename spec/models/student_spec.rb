require 'rails_helper'

describe Student do
  context "Validations" do
    it "student is invalid without a name" do
      student = Student.create!(first_name: nil)

      expect(student).to_not be_valid
    end
  end
end
