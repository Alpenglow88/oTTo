# RSpec Expectations

## Built-in matchers

```ruby
have(n)
have_at_least(n)
have_at_most(n)
```

### Equivalence

```ruby
actual.should eq(expected)  # passes if actual == expected
actual.should == expected   # passes if actual == expected
actual.should eql(expected) # passes if actual.eql?(expected)
```

### Identity

```ruby
actual.should be(expected)    # passes if actual.equal?(expected)
actual.should equal(expected) # passes if actual.equal?(expected)
```

### Comparisons

```ruby
actual.should be >  expected
actual.should be >= expected
actual.should be <= expected
actual.should be <  expected
actual.should be_within(delta).of(expected)
```

### Regular expressions

```ruby
actual.should =~ /expression/
actual.should match(/expression/)
```

### Types/classes

```ruby
actual.should be_an_instance_of(expected)
actual.should be_a_kind_of(expected)
```

### Truthiness

```ruby
actual.should be_true  # passes if actual is truthy (not nil or false)
actual.should be_false # passes if actual is falsy (nil or false)
actual.should be_nil   # passes if actual is nil
```

### Expecting errors

```ruby
expect { ... }.to raise_error
expect { ... }.to raise_error(ErrorClass)
expect { ... }.to raise_error("message")
expect { ... }.to raise_error(ErrorClass, "message")
```

### Expecting throws

```ruby
expect { ... }.to throw_symbol
expect { ... }.to throw_symbol(:symbol)
expect { ... }.to throw_symbol(:symbol, 'value')
```

### Predicate matchers

```ruby
actual.should be_xxx         # passes if actual.xxx?
actual.should have_xxx(:arg) # passes if actual.has_xxx?(:arg)

{:a => "A"}.should have_key(:a) # => {:a => "A"}.has_key?(:a) | passes
{:a => "A"}.should have_key(:b) # => {:a => "A"}.has_key?(:b) | fails
```

### Change

```ruby
expect {
  team.add_player(player)
}.to change(roster, :count)

expect {
  team.add_player(player)
}.to change(roster, :count).by(1)

expect {
  team.add_player(player)
}.to change(roster, :count).by_at_least(1)

expect {
  team.add_player(player)
}.to change(roster, :count).by_at_most(1)

string = "string"
expect {
  string.reverse!
}.to change { string }.from("string").to("gnirts")

expect {
  person.happy_birthday
}.to change(person, :birthday).from(32).to(33)

expect {
  employee.develop_great_new_social_networking_app
}.to change(employee, :title).from("Mail Clerk").to("CEO")

expect {
  doctor.leave_office
}.to change(doctor, :sign).from(/is in/).to(/is out/)

user = User.new(:type => "admin")
expect {
  user.symbolize_type
}.to change(user, :type).from(String).to(Symbol)
```

### Ranges (Ruby >= 1.9 only)

```ruby
(1..10).should cover(3)
```

### Collection membership

```ruby
actual.should include(expected)
actual.should start_with(expected)
actual.should end_with(expected)
```

#### Examples

```ruby
[1,2,3].should include(1)
[1,2,3].should include(1, 2)
[1,2,3].should start_with(1)
[1,2,3].should start_with(1,2)
[1,2,3].should end_with(3)
[1,2,3].should end_with(2,3)
{:a => 'b'}.should include(:a => 'b')
"this string".should include("is str")
"this string".should start_with("this")
"this string".should end_with("ring")
```
