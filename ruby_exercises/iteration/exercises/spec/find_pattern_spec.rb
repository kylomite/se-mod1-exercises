RSpec.describe 'find pattern' do

  it 'test 1' do
    ages = [39, 45, 29, 24, 50]
    first_younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        first_younger_than_thirty = age
        break
      end
    end
    expect(first_younger_than_thirty).to eq(29)
  end

  it 'test 2' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    first_younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        first_younger_than_thirty = name
        break
      end
    end
    expect(first_younger_than_thirty).to eq(:ladonna)
  end

  it 'test 3' do
    ages = [39, 45, 29, 24, 50]
    first_older_than_fifty = nil
    ages.each do |age|
      if age > 50
        first_older_than_fifty = age
        break
      end
    end

    expect(first_older_than_fifty).to be_nil
  end

  it 'test 4' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    first_older_than_fifty = nil
    ages.each do |name, age|
      if age > 50
        first_older_than_fifty = name
        break
      end
    end

    expect(first_older_than_fifty).to be_nil
  end

  it 'test 5' do
    ages = [39, 45, 29, 24, 50]
    first_multiple_of_three = nil
    ages.each do |age|
      if age % 3 == 0
        first_multiple_of_three = age
        break
      end
    end

    expect(first_multiple_of_three).to eq(39)
  end

  it 'test 6' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    first_multiple_of_three = nil
    ages.each {|title, value|
      if value % 3 == 0
        first_multiple_of_three = title
        break
      end
    }

    expect(first_multiple_of_three).to eq(:abdi)
  end

  it 'test 7' do
    people = ["Willie", "Carmen Sandiego", "Bryan", "Faith", "Zac"]
    carmen = ''
    people.each {|name|
      if name == "Carmen Sandiego"
        carmen << name
        break
      end
    }

    expect(carmen).to eq("Carmen Sandiego")
  end

  it 'test 8' do
    places = {
      Bangkok: "Willie",
      Santa_Fe: "Carmen Sandiego",
      Rome: "Bryan",
      Munich: "Faith",
      Mogudishu: "Zac"
    }
    where_is_carmen_sandiego = ''
    places.each{|title, val|
    if val == "Carmen Sandiego"
      where_is_carmen_sandiego = title
      break
    end
    }

    expect(where_is_carmen_sandiego).to eq(:Santa_Fe)
  end

  it 'test 9' do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    first_even = nil
    numbers.each {|num|
      if num % 2 == 0
        first_even = num
        break
      end
    }

    expect(first_even).to eq(10)
  end

  it 'test 10' do
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    first_pending = nil
    purchases.each {|title, val|
      if val == :pending
        first_pending = title
        break
      end
      } 

    expect(first_pending).to eq("books").or eq("food")
  end

  it 'test 11' do
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    starts_with_s = nil
    purchases.each {|title, val|
      if title[0] == "s"
        starts_with_s = title
      end
    }  

    expect(starts_with_s).to eq("shoes")
  end
end
