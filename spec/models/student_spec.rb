require 'rails_helper'

describe Student do
  context "Validations" do
    it "student is invalid without a first name" do
      student = Student.create(last_name: "Johnson")

      expect(student).to_not be_valid
    end

    it "student is invalid without a last name" do
      student = Student.create(first_name: "Johnson")

      expect(student).to_not be_valid
    end

    it "student is valid with all the names" do
      student = Student.create(first_name: "Johnson", last_name: "Totta")

      expect(student).to be_valid
    end
  end
end
