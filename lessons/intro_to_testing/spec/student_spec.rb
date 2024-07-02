# Add the 2 requires you will need here
require './lib/student'
require 'rspec'


describe Student do
  before(:each) do
    @student = Student.new('Penelope')
  end
  describe '#initialize' do
    it 'is an instance of student' do
      expect(@student).to be_a Student
    end
    it 'has a name' do
      expect(@student.name).to eq ("Penelope")
    end
    it 'has cookies' do
      expect(@student.cookies).to eq ([])
    end
    it 'can add cookies' do
      @student.add_cookie("Chocolate chip")
      @student.add_cookie("Snickerdoodle")
      expect(@student.cookies).to eq (["Chocolate chip", "Snickerdoodle"])
    end
  end
end
