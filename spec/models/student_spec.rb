describe Student do
  context "Validations" do
    it "student is invalid without a name" do
      student = Student.create!(name: nil)

      expect(student).to_not be_valid
    end
  end
end
