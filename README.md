# Collections Practice

## Learning Goals

- Practice Iteration over arrays and hashes
- Practice accessing and comparing data in arrays and hashes
- Navigate and create nested data structures

## Instructions

The goal of this lab is to become proficient manipulating the basic data
structures we use in Ruby: arrays and hashes.  Try experimenting with the
built-in Ruby and Hash methods as well as implementing your own logic to solve
these. Write methods that solve each of the RSpec tests. All solutions should be
generic and work for any "case." These problems should get progressively more
difficult.

### `begins_with_r`

The `begins_with_r` method takes in an array of strings returns true if every
string of the array starts with an `r`. Returns false otherwise.

Example:

```ruby
array_of_words = [
  "apple",
  "rambutan",
  "banana",
  "raspberry"
]

r_words = [
  "red",
  "raisin",
  "rice"
]

begins_with_r(array_of_words) #=> false
begins_with_r(r_words) #=> true
```

### `contain_a`

The `contain_a` method takes in returns all elements that contain the letter
`a`. For example, given the following array:

```ruby
array_of_produce = [
  "apple",
  "banana",
  "broccoli",
  "mesclun"
]


contains_a(array_of_produce)
```

We would get an array in return without some elements:

```ruby
[
  "apple",
  "banana"
]
```

### `first_wa`

The `first_wa` method returns the first element that _begins_ with the letters `wa`.

For example:

```ruby
array_of_words = [
  "paint",
  "garage",
  "housewares",
  "walk",
  "wait",
  "television"
]

first_wa(array_of_words)
```

Would return:

```ruby
"walk"
```

Even though `"housewares"` has `wa`, it does not start with those letters, so it
was not considered.

### `remove_non_strings`

The `remove_non_strings` method takes in an array of different data types and
returns a new array where anything that is not a string has been removed.

For example:

```ruby
remove_non_strings(["I am a string", :symbol, 10, {}, "hey a string", []])
```

Should return:

```ruby
["I am a string", "hey a string"]
```

### `count_elements`

The `count_elements` method takes in an array of hashes, some duplicated. It then returns
a new array of hashes that include a `:count` key indicating the number
of original hashes that were passed in. So, for example, if we were to
run the following:

```ruby
count_elements([{:name => "peter"}, {:name => "peter"}, {:name => "ashley"}])
```

We would get in return:

```ruby
[{:name => "peter", :count => 2}, {:name => "ashley", :count => 1}]
```

### `merge_data`

The `merge_data` method takes in two arrays of the same length, both containing
hashes. It returns one array, the same length as the original, containing merged
hashes - the first hash in both arrays should be merged together to become the
first hash in the returned array, the same with the second, and all subsequent
hashes.

So, for example, if we passed in an array of hashes containing titles and an
array of hashes containing names, we would get _one_ array containing hashes,
each with one title and one name:

```ruby
merge_data([{:title => "Mayor"}, {:title => "Governor"}], [{:name => "Quimby"}, {:name => "Bailey"}])
```

We would get in return:

```ruby
[{:title => "Mayor", :name => "Quimby"}, {:title => "Governor", :name => "Bailey"}]
```

### `find_cool`

The `find_cool` method takes in an array of hashes and returns a new array containing only
hashes that contain a key `:temperature` pointed to the value `"cool"`. For example, running
the following:

```ruby
find_cool({:location => "Texas", :temperature => "hot"}, {:location => "Artic", :temperature => "cool"}, {:location => "New York", :temperature => "temperate"})
```

We would get in return:

```ruby
[{:location => "Artic", :temperature => "cool"}]
```

### `organize_campuses`

The `organize_campuses` method takes in a hash containing the names of some
Flatiron School campuses as keys. These keys each point to a hash containing a
`:location` pointing to the US state they are in. This method should create a
new hash where instead of campus names, the US state value is the 'top-level'
key. This key should point to an array containing each of the campus names that
are located in that state.

For example, if we were to run:

```ruby
campus_hash = {
  "Flatiron School San Francisco" => {
    :location => "CA"
  },
  "Access Labs" => {
    :location => "NY"
  },
  "Flatiron School Seattle" => {
    :location => "WA"
  },
  "Flatiron School Manhattan" => {
    :location => "NY"
  }
}

organize_campuses(campus_hash)
```

Will result in:

```ruby
{
  "CA"=>["Flatiron School San Francisco"],
  "NY"=>["Access Labs", "Flatiron School Manhattan"],
  "WA"=>["Flatiron School Seattle"]
}
```

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/collections_practice_vol_2' title='Collections Practice'>Collections Practice</a> on Learn.co and start learning to code for free.</p>
