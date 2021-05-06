# Tech-away!
Solving the problem of unused tech and people who are in desperate need of tech.

[https://www.tech-away.org/](https://www.tech-away.org/)

# Motivation
Currently in the world, technology is quickly developing. While this is good in many ways, it is also creating a huge recycling and resource issue, yet at the same time there are many people are in desperate need of the tech. Tech is heavily used in everyday life, whether it's for work or quality of life.

We wanted to bring balance to this problem.

# Solution

A platform where users can list their unwanted tech items.

We designed the platform for two types of users, those with unwanted tech and charity workers to find items on behalf of a person who needs it. We primarily aimed at the person of need being a refugee or someone who is new to the country. We refer to them throughout here and the app as a seeker.

## Project outline
This was our second and last project during the final two weeks of the Le Wagon bootcamp, following our first project: [Art-exchange](https://github.com/martaroncero/Art-exchange).

The idea originally came from [Marta Roncero](https://github.com/martaroncero/) to which she pitched during Le Wagon's pitch night. We then were grouped together because us four voted highly of the idea.

The entire website was built from scratch by us over a simple rails boilerplate, and we took the following process:

 1. Created **user stories** 
 2. Outlined **user actions**
 3. Created a model **schema**
 4. Outlined necessary **routes/controllers**
 5. Created a **Figma** design
 6. Decided **team workflow** and began coding
 7. [Won](https://github.com/wonnie2020) presented the MVP on the first Friday
 8. Improved the app based on feedback
 9. Added metatags, custom domain name and custom error pages
 10. [Marta Roncero](https://github.com/martaroncero/) presented the final project to a remote live event on Livestorm on the second Friday 

Everyday we discussed our progress, decided what needed completing for the day, and then divided the tasks.



## How it works
*We took a unique approach to the product listing process.*

**Traditional way:**
A user lists their item and waits. A charity worker then has to routinely check the listings and remember which ones they have checked and not, and refer to what their charity seekers need. When they find a new listing they then have to check the description to see if it fulfills the request.

**New way:**
A charity worker creates a profile for a seeker and a request that they need an item, for example a mobile. Later a user who has a unused mobile finds this request and checks the request description to see if their item fulfills it. If it does they will then list it based on this request. The charity worker will now be able to see the offer in their charity seekers' offers list and can now accept or decline it.

**Result**: 
Reducing the workload on charity workers and making a more efficient system for them.


### Actions

#### As a charity worker you can:

- Create a seeker user (uses user model, but is not loginable)
- Add a request to a seeker, i.e. the type of item they need
- View the item offers (and the item itself) and accept or decline them
- Can list items like a regular user as well

#### As a regular user you can only:
- List tech items based on requests
- Check your dashboard to see if your items/offers are pending, accepted or declined
- Contact a charity through our Whatsapp feature


## Techstack

**Core languages/tools:**
- Ruby on Rails
- PostgreSQL
- Heroku

**Features:**
- Mapbox -> map on products#show
- Cloudinary -> hosting the images
- PGsearch -> searching for a product on products#index
- Whatsapp chat integration -> a regular user can reach out to a charity

## Created by
- [Gayatri Arora](https://github.com/GayatriArora)
- [Won Lee](https://github.com/wonnie2020)
- [Marta Roncero](https://github.com/martaroncero/)
- [Ryan Woods](https://github.com/ryanofwoods)

