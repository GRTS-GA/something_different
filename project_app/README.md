# README

Something Different<br>
<br>
An app that helps users find events by location, giving an alternative to the usual bar/club options.
This site allows users to not only search for local events but create their own events. Once logged-in, users can browse
other events saved by users.<br>

Getting Started<br>

To fork a copy of the project go to: 

https://github.com/GRTS-GA/something_different

Prerequisites<br>

To successfully run, you will need the following programs and gems:<br>
Ruby <br>
Rails<br>
Postgresql<br>
GeoKit - Geolocation<br>
HTTParty - API Handling<br>
Ticketmaster API<br>
Devise - User Authentication<br>
PG<br>
Carrierwave - Image upload<br>
ImageMagick<br>

Deployment<br>
This app was deployed on Heroku<br>

Unsolved Challenges<br>
Improving User Experience<br>


Site Navigation<br>
Navigation Bar<br>
When a user arrives on the landing page, there is a navigation bar that has links to Home, Log-In and Sign-Up.<br>
When a user is logged in, they also have a welcome message, and links to Search Events, Create Events, View Profile and Log-Out.<br>

Landing Page<br>
User arrives on landing page with a search field to enter their address.<br>
Once user clicks search, the categories for the results appear below the search bar.<br>
User can click a category and the available events appear below.<br>
User can click the event and is redirected to the event's show page.<br>
<br>
Result Page <br>
User sees additional details for the event.<br>
User has a 'See Details' link that redirects to the Ticketmaster page for the event.<br>
User has a "Save Event' link that will check if user is logged-in.<br>
If user is logged-in, the event saves to their profile.<br>
If the user is not logged in, they are redirected to the Log-In page.<br>
<br>
Log-In<br>
User can enter their email-address and password. Once logged in, they are redirected to the previous page.<br>
If user does not have an account, they can click 'Sign-Up' to re-direct to the Sign-Up page.<br>

Sign-Up<br>
User can enter their name, email, password and upload a photo. Once logged in, they can see their profile.<br>
<br>
Profile<br>
User can view their details.<br>
User can edit profile and image.<br>
User can view the event saved to their profile. If they click an event they are taken to the Event's show page.<br>

Event Page<br>
User can see the event's details (created by, date, address, price).<br>
If the event belongs to the user, they can edit or delete the event.<br>
User can see and create comments, they can also edit or delete comments that belong to them.<br>
<br>
Browse Events<br>
User can see events saved by all users. If they click on the event , they are re-directed to the event show page, where they can leave a comment.<br>
<br>

Authors<br>

Tunde Shoneye - API Calls, Programming, Initial Setup<br>
Samantha Garaicoa - CSS, Wireframes, UX<br>
Robert Romulus - Initial Concept, Image Upload, Gem Wizard<br>
Geny Cabral - Git Tsar, Troubleshooting, Project Manager<br>


Acknowledgments<br>
Eventbrite<br>
Stack Overflow<br>

WDI Turtle All-Stars (Jared, Matt, Tims, Trevor, Taka)

