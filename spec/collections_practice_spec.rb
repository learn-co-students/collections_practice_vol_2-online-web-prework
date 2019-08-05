require 'spec_helper'

describe 'collections practice vol 2.' do

  let(:data_1) {
    [
        {
            :first_name => "blake",
                 :motto => "Have a koala-ty day!"
        },
        {
            :first_name => "ashley",
                 :motto => "I dub thee, 'Lady Brett Ashley'."
        }
    ]
  }

  let(:data_2) {
    [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]
  }

  let(:merged_data) {
    [
        {
             :first_name => "blake",
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson",
                  :motto => "Have a koala-ty day!"

        },
        {
             :first_name => "ashley",
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs",
                  :motto => "I dub thee, 'Lady Brett Ashley'."

        }
    ]
  }

  let(:cool) {
    [
            {
                   :name => "ashley",
            :temperature => "sort of cool"
        },
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]
  }

  let(:campuses) {
    {
      "Flatiron School Manhattan" => {
        :location => "NY"
      },
      "Access Labs" => {
        :location => "NY"
      },
      "Flatiron School Chicago" => {
        :location => "IL"
      },
      "Flatiron School Houston" => {
        :location => "TX"
      },
      "Flatiron School Midtown" => {
        :location => "NY"
      },
      "Flatiron School Austin" => {
        :location => "TX"
      }
    }
  }
  let(:organized_campuses) {
    {"NY"=>["Flatiron School Manhattan", "Access Labs", "Flatiron School Midtown"],
     "TX"=>["Flatiron School Houston", "Flatiron School Austin"],
     "IL"=>["Flatiron School Chicago"]}
  }

  describe '#begins_with_r' do
    # Question 1

    it 'Return true if every element of the passed in array starts with an "r" and false otherwise.' do
      expect(begins_with_r(["ruby", "rspec", "rails"])).to eq(true)
    end

    it "should return false if there's an element that does not begin with r" do
      expect(begins_with_r(["ruby", "rspec", "sails"])).to eq(false)
    end

  end

  describe '#contain_a' do
    # Question 2

    it "return all elements that contain the letter 'a'" do
      expect(contain_a(["earth", "fire", "wind", "water", "heart"])).to eq(["earth", "water", "heart"])
    end

  end

  describe '#first_wa' do

    # Question 3

    it "Return the first element that begins with the letters 'wa'" do
      expect(first_wa(["candy", :pepper, "wall", :ball, "wacky"])).to eq("wall")

      array_of_words = [
        "paint",
        "garage",
        "housewares",
        "walk",
        "wait",
        "television"
      ]

      expect(first_wa(array_of_words)).to eq("walk")
    end

  end

  describe '#remove_non_strings' do

    # Hint: Use the method "class"  "blake".class

    # Question 4

    it "remove anything that's not a string from an array" do
      expect(remove_non_strings(["blake", 1, :hello])).to eq(["blake"])
      expect(remove_non_strings([[], {}, "", "h"])).to eq(["", "h"])
    end

  end

  describe '#count_elements' do

    # Question 5

    it 'count how many times something appears in an array' do
      expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
      expect(count_elements([{:title => "mayor"}, {:title => "governor"}, {:title => "governor"}])).to eq([{:title => "mayor", :count => 1}, {:title => "governor", :count => 2}])
    end

  end

  describe '#merge_data' do

    # Question 6

    it 'combines two nested data structures into one' do
      expect(merge_data(data_1, data_2)).to eq(merged_data)
      prices = [{:price => 10}, {:price => 50}]
      types = [{:type => "toy"}, {:type => "food"}]
      merged_prices_and_types = [
        {
          :type => "toy",
          :price => 10
        },
        {
          :type => "food",
          :price => 50
        }
      ]
      expect(merge_data(types, prices)).to eq(merged_prices_and_types)
    end

  end

  describe '#find_cool' do

    # Question 7

    it 'find all cool hashes' do
      expect(find_cool(cool)).to eq([{:name => "blake",:temperature => "cool"}])
    end

  end

  describe '#organize_campuses' do

    # Question 8

    it 'organizes the campuses by location' do
      expect(organize_campuses(campuses)).to eq(organized_campuses)
    end

  end

end
