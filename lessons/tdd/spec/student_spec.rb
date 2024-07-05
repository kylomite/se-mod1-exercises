require './lib/student'

RSpec.describe Student do
    it 'exists' do
        student = Student.new("Sophocles", 1)

        expect(student).to be_an_instance_of Student
    end

    it 'has a name' do
        student = Student.new("Sophocles", 1)

        expect(student.name).to eq "Sophocles"
    end

    it 'is in a mod' do
        student = Student.new("Sophocles", 1)

        expect(student.mod).to eq "1"
    end

    it 'should have empty array of skills' do
        student = Student.new("Sophocles", 1)

        expect(student.skills).to be_instance_of(Array).and be_empty
    end

    it 'should say which mod theyre in' do
        student = Student.new("Sophocles", 1)

        expect(student.say_mod).to eq "I'm in Mod 1"
    end

    it 'should add skill to skills array' do
        student = Student.new("Sophocles", 1)
        student.learn("testing")

        expect(student.skills).to be_instance_of(Array).and include("testing")
    end

    it 'should hold more than one skill in skills array' do
        student = Student.new("Sophocles", 1)
        student.learn("testing")
        student.learn("mocks")

        expect(student.skills).to be_instance_of(Array).and include("testing", "mocks")
    end
    
    it 'should allow mod promotion' do
        student = Student.new("Sophocles", 1)
        student.promote

        expect(student.say_mod).to eq "I'm in Mod 2"

        student.promote

        expect(student.say_mod).to eq "I'm in Mod 3"

        student.promote

        expect(student.say_mod).to eq "I'm in Mod 4"
    end
end