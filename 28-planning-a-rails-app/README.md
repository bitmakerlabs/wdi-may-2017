# Analyzing and planning a new Rails app

Today we will be looking at how to go about planning and thinking through a Rails application. We will be talking about some of the things that need to be done before you start coding.


## Agenda
After this lesson, you will know:

* User Stories
* Prioritization
* Key Words
* Tough Decisions/Simplifying Assumptions
* Modeling
* Mock ups

Then we will cover various approaches to the Software Development Life Cycle that you may apply in your work.

* Waterfall
* Extreme Programming (XP)
* Agile
* Scrum






# Mission Statement
Allow a user to make a reservation at a restaurant online


## User Stories

As a ...
I want ...
So that...

- Who are the users?
- What do they need to do?
- Why do they need it? What is the goal they're trying to accomplish?






### EXAMPLES











## Prioritize
1. NEED TO HAVE (Minimum Viable Product)
- As a user, I want to make a reservation at a restaurant of my choosing
- As a user, I want confirmation that my reservation has been accepted
- As a owner, I want to be able to add my restaurant
- As a user, I must specify a date and time, and party size for my reservation
- As a user, I want to be able to see a list of restaurants
- As an owner, I want to view the list of reservations made
- As an owner, I want to be able to specify available hours
- As a user, I want to ensure double booking is not an issue, never overcapacity!

2. NICE TO HAVE (We'll try)
- As a user, I want to be able to manage my reservation

3. HAPPY TO HAVE (Sure, maybe...)
- As a user, I want to see the menu at the restaurants
- As an owner, I want to manage inventory based on restaurant business
- As an owner, I want to communicate back to the diners
- As an owner, I want a notification if restaurant unusually busy
- As a user, I want to be able to search by and give ratings to restaurants
- As a user, I want to be able to review restaurants I've been to
- As a user, I want to see a map of restaurants near me
- As a user, I want to export my reso to a Google calendar
- As a user, I want to filter by cuisine and price
- As an owner, I want to display my restaurants hours, location, and info
- As an owner, I want to be able to promote my restaurant
- As an owner, I might want to make special notes about a reservation, and see them at time of arrival
- As an owner, I want to contact musicians and DJ's for special nights
- As a diner, I want to be on a wait list














## Define our key words
Reservation
- Time
- Date
- Party Size
- Restaurant
- User

User (Diner, Owner?)
- Name
- Email
- Phone
- Account (maybe?)

Restaurant
- Name
- Capacity
- Operating Hours
- Phone Number
- Type/Cuisine
- Address



## Tough decisions about making a reservation
- How long is a reservation? How long is the average? (Timeslots? X capacity, reset/buffer?) (force limits?)
- Table layouts (8-top vs. 4-top?) Book under capacity to accomodate?
- Out of band reseravtions (phone, email, in person?) Owner/Admin create reso?
- Overlapping reservations?
- Limits on how far ahead?  A year, a month?





## Simplifying Assumptions
- Diners and Owners are just Users
- All reservations are 2 hours (or 1 hour).
- We deal in Seats, not Tables. A limit on party size of (8?)
- All reservations start on the hour.
- No limits on how far ahead







## Planning
- Make assumptions

- Simplify!

- Make mockups












## Modelling
- Pen and paper / Whiteboard
- Create models
- Draw relationships
