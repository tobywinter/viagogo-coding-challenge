Viagogo Coding Challenge
========================

## Approach

#### TDD the building of these key features:
- A World object: which is 10 by 10 squares
- Events: which have an @location represented by coordinates of 1-10 by 1-10
- The World has @events stored in an array
- The World only accepts Events with a location within the limits of it's 10 by 10 area.
- Events: have a @tickets variable
- Tickets can be stored in an Events @tickets variable  
- An Event's @tickets variable can have 0 or more tickets
- Tickets have a @price which is anything greater than 0 USD
- An Event will understand what the cheapest ticket price available for it is.
- Events can be added to the World 
- The World will only allow 1 event per location, so location coordinates must be unique
- A Distance Calculator will understand the distance between a user location and each event
- The Distance Calculator will understand Manhattan Distance to calculate this distance
- Distance Calculator will understand which events are the closest, from closest to furthest
- If event x=(a,b) && event y=(c,d) then Manhattan distance is (a-c) + (b-d)
- Interface will request/accept a user location (as coordinates)
- The interface will use the distance Calculator to know the 5 closest events
- The interface will print the Five closest Events in order from closest to furthest && the price of the cheapest ticket for each event: when provided with a user location.
- For the purpose of this exercise: Events and tickets must be randomly generated when a world is generated.


## To Run

- clone repository
- run bundler
