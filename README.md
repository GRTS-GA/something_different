
# README

Something Different  An app that helps users find events by location, giving an alternative to the usual bar/club options. This site allows users to not only search for local events but create their own events. Once logged-in, users can browse other events saved by users. 
Getting Started 
To fork a copy of the project go to:
https://github.com/GRTS-GA/something_different
Prerequisites 
To successfully run, you will need the following programs and gems: Ruby  Rails Postgresql GeoKit - Geolocation HTTParty - API Handling Ticketmaster API Devise - User Authentication PG Carrierwave - Image upload ImageMagick 
Deployment This app was deployed on Heroku 
Unsolved Challenges Improving User Experience 
Site Navigation Navigation Bar When a user arrives on the landing page, there is a navigation bar that has links to Home, Log-In and Sign-Up. When a user is logged in, they also have a welcome message, and links to Search Events, Create Events, View Profile and Log-Out. 
Landing Page User arrives on landing page with a search field to enter their address. Once user clicks search, the categories for the results appear below the search bar. User can click a category and the available events appear below. User can click the event and is redirected to the event's show page.  Result Page  User sees additional details for the event. User has a 'See Details' link that redirects to the Ticketmaster page for the event. User has a "Save Event' link that will check if user is logged-in. If user is logged-in, the event saves to their profile. If the user is not logged in, they are redirected to the Log-In page.  Log-In User can enter their email-address and password. Once logged in, they are redirected to the previous page. If user does not have an account, they can click 'Sign-Up' to re-direct to the Sign-Up page. 
Sign-Up User can enter their name, email, password and upload a photo. Once logged in, they can see their profile.  Profile User can view their details. User can edit profile and image. User can view the event saved to their profile. If they click an event they are taken to the Event's show page. 
Event Page User can see the event's details (created by, date, address, price). If the event belongs to the user, they can edit or delete the event. User can see and create comments, they can also edit or delete comments that belong to them.  Browse Events User can see events saved by all users. If they click on the event , they are re-directed to the event show page, where they can leave a comment.  
Authors 
Tunde Shoneye - API Calls, Programming, Initial Setup Samantha Garaicoa - CSS, Wireframes, UX Robert Romulus - Initial Concept, Image Upload, Gem Wizard Geny Cabral - Git Tsar, Troubleshooting, Project Manager 
Wireframes and Presentation https://drive.google.com/file/d/0B_2xk_qmehtkcTJwSVZpRVZkWWs/view?usp=sharing
Acknowledgments Eventbrite Stack Overflow 
WDI Turtle All-Stars (Jared, Matt, Tims, Trevor, Taka)


