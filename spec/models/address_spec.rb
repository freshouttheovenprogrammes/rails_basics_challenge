require 'rails_helper'

describe Address do
  context "validations" do
    it "is valid with all fields" do
      student = Student.create!(first_name: "Eva", last_name: "Toon")
      address = Address.create!(description: "Greate", street_address: "4 4th",
                                city: "denver", state: "NY", zip_code: 66000,
                                student: student)

      expect(address).to be_valid
    end
  end
  context "relationships" do
    it "belongs to students" do
      student = Student.create!(first_name: "Eva", last_name: "Toon")
      address = Address.create!(description: "Greate", street_address: "4 4th",
                                city: "denver", state: "NY", zip_code: 66000,
                                student: student)
      expect(address).to respond_to(:student)
    end
  end
end
