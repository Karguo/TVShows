<h1>CRUD app for WDI17 Project 2</h1>

<h2>App listing TV shows based on comic books that are currently showing</h2>

The final result:
https://karguo.herokuapp.com/

This was what I had written prior to starting the project: -
<h3>Will be using:</h3>
<li>
Ruby to code the pages,
CSS to style the pages,
Postgresql to create the database to hold the show information,
ActiveRecord
</li>

Each page will have the same top Title and Navigation bar

Navigation bar will include links to: - home, login/signup, email us/suggestions and possibly a theme switcher (which will use JS)

Models will include shows, comments and users. 
Shows table will hold id, title of show, an image_url of the show (possibly from OMDBapi).
Comments table will hold id, a text body and a show_id
Users table will hold id, email, password_digest and a column checking if user is an admin or not.
Suggestions will hold id, user_id/email and a text body. 

Admin users will be allowed to ADD new shows, EDIT show information and DELETE show information.
Regular guest users will be allowed to LIKE a show and to COMMENT (and edit/delete their comment) a show

<h3>Pages:</h3>
<li>
index.erb will list all the shows with a title and an image, clicking on it will lead to the show information page. This page will also have for the admin the ability to add a new show
show.erb will show the title and image of an individual show, will have the year and a brief show description (possibly from OMDBapi). Will have a LIKE button (with a count). The COMMENTS section will also be on this page - comments section will add users comments who will also be able to edit/delete their own comments. For admin users, there will also be a EDIT button to edit show information and also ability to delete any inappropriate comments. 
new.erb will only be accessible for admin users to add new shows. It will be a form asking for title, image and description of show.
login.erb will a form for all users to signup or login (if already signed up) with their email and create a password. 
a suggestion page where user can add their suggestions on what other shows they want to see on the app. Only admin will be able to remove suggestions.
</li>

Links to my wireframe/framework:
[Imgur](https://i.imgur.com/iwUWMpK.jpg)
[Imgur](https://i.imgur.com/Af91piN.jpg)
[Imgur](https://i.imgur.com/5P3yXoI.jpg)
[Imgur](https://i.imgur.com/r0RYvIO.jpg)
[Imgur](https://i.imgur.com/XVB0mOc.jpg)
[Imgur](https://i.imgur.com/SSY7I39.jpg)
____________________________

Thoughts after doing the project:

I think I managed to achieve most of what I had set out to do which I am very happy about. It ended up being a very basic CRUD app which could possibly have had more features but I think it does serve what I wanted it to, ie an app showing a list of TV shows that are currently airing that are based on comic books. 

There are 3 types of users: - 1) admin with full access, including ability to add and delete shows. Add and delete comments and suggestions. 2) user with slightly more limited access, ie, view the individual shows, add comments, add suggestions. 3) guest with limited access, ie, view the individual shows, view the comments and suggestions but unable to contribute to them. 

Theme switcher with 3 different css files completed using Javascript and Local Storage. The Javascript was again challenging for me but it is working at least. 
