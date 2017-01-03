# Animal is-a object look at the extra credit
class Animal
end

## Dog is-a member of the class Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Person is-a object
class Person
  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person
  def initialize(name, salary)
    ## Employee has-a name subject to exactly the same definitions as the attribute 'name' in the class Person.
    super(name)
    ## Employee has-a salary.  Not every Person has-a salary, but every Employee does.
    @salary = salary
  end
end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog, called Rover
rover = Dog.new("Rover")

## satan is-a Cat, called Satan
satan = Cat.new("Satan")

## mary is-a Person, called Mary
mary = Person.new("Mary")

## mary is-a Person who has-a Pet, satan
mary.pet = satan

## frank is an Employee, has-a 'name' of "Frank" and has-a 'salary' of 120,000
frank = Employee.new("Frank", 120000)

## frank has-a pet, frank's pet is rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon, which is-a Fish
crouse = Salmon.new()

## harry is-a Halibut, which is-a Fish
harry = Halibut.new()
