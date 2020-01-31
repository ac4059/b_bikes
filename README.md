Boris Bikes
=================

Getting started
---------------
1. Clone this repo to your local machine
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, run `bundle`

1. Implement user stories in Task section below using test driven development
2. Keep separate files for every class and test suite
3. Use simplest possible first test approach
4. Adhere to SRP and encapsulation principles (to the best of your ability)
5. Run Rubocop before every commit, tidying as you go
6. Once satisfied minimum user requirements, refactor to defend against edge cases

Task
-----
We have a request from a client to write the software to control the flow of bikes across the city of London. The bikes can be docked and released across the city of London. Further, the docking station has a maximum capacity. Occasionally, situations may arise in which bikes break. The user stories outline requirements that are designed to mitigate such circumstances.  Here are the user stories that we worked out in collaboration with the client:

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```
Your task is to test drive the creation of a set of classes/modules to satisfy all the above user stories.

Please create separate files for every class, module and test suite.

In code review we'll be hoping to see:

- All tests passing
- High Test coverage (>95% is good)
- The code is elegant: every class has a clear responsibility, methods are short etc.
