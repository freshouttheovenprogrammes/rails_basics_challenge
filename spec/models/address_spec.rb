require 'rails_helper'

describe Address do
  context "validations" do
    it "is valid with all fields" do
      address = Address.create!(description: "Greate", street_address: "4 4th", city: "denver", state: "NY", zipcode: 66000)

      expect(address).to be_valid
    end
  end
end
