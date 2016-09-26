##Casual Jobs
This is Project Two for WDi 16, a team project involving Yangmei Chen, Arpan Bhalla and Andrew Knight. We tried to recreate a model similar to AirTasker - A small job search platform matching employers and employees -  within a week. This is part of the Web Development Immersive 16 with General Assembly.

## Background
The requirements: Have at least 3 models (more if they make sense) – one representing someone using your application, and one that represents the main functional idea for your app
Include sign up/log in functionality, with encrypted passwords & an authorization flow
Have complete RESTful routes for at least one of your resources with GET, POST, PUT, PATCH, and DELETE Utilize an ORM to create a database table structure and interact with your relationally-stored data.

## Result
In total, six models were created:
- Users
- Jobs
- Comments
- Categories
- Ratings
- Applicants
The ratings model was set up in rails as a polymorphic association between users and jobs. The applicants, ratings and comments models are all viewed within the Job model. We also added enums for status of job (proposal, in progress and complete) and status of user (employee, employer and admin).

We used the collaboration approach with Git. We were proud to deliver this within a week.

## How to view app
- Access it here: https://casual-hire.herokuapp.com
- Clone / fork my repo: https://github.com/gingernutter/wdi16_group_project_casual_hire

## Technology Used:
- Ruby on Rails
- Ruby
- Ajax
- Javascript
- JQuery
- Underscore
- Backbone (Set up but not utilised)
- HTML5
- CSS3

## Libraries / Plugins / APIs Used
- Google Maps
- Isotope

## Gems
- 'geocoder'
- 'Materialize-SASS'
- 'cloudinary'
- 'slick'
- 'bcrypt', '~> 3.1.7'

## Future Inclusions
- Include further integration of Google maps, including adding tags and links to jobs.
- Hiding rating form once completed.
- Enhance the data and statistics already included in the app.
- Getting better user experience through infinite scrolling through jobs index page and including a map on side panel.
- Add communication functionality between users (in mail)
