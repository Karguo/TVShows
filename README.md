CRUD app for WDI17 Project 2

App listing TV shows based on comic books that are currently showing

Will be using:
- Ruby code the pages,
- CSS to style the pages,
- Postgresql to create the database to hold the show information,
- ActiveRecord
- possibly link to OMDBapi

- Each page will have the same top Title and Navigation bar
- Navigation bar will include links to: - home, login/signup and possibly a theme switcher (which will use JS)

Models will include a shows table, a comments table and a users table. 
Shows table will hold id, title of show, an image_url of the show (possibly from OMDBapi)
Comments table will hold id, a text body and a show_id
Users table will hold id, email, password_digest and a column checking if user is an admin or not. 

Admin users will be allowed to ADD new shows, EDIT show information and DELETE show information.
Regular guest users will be allowed to LIKE a show and to COMMENT (and edit/delete their comment) a show

Pages:
- index.erb will list all the shows with a title and an image, clicking on it will lead to the show information page. This page will also have for the admin the ability to add a new show
- show.erb will show the title and image of an individual show, will have the year and a brief show description (possibly from OMDBapi). Will have a LIKE button (with a count). The COMMENTS section will also be on this page - comments section will add users comments who will also be able to edit/delete their own comments. For admin users, there will also be a EDIT button to edit show information and also ability to delete any inappropriate comments. 
- new.erb will only be accessible for admin users to add new shows. It will be a form asking for title, image and description of show.
- login.erb will a form for all users to signup or login (if already signed up) with their email and create a password. 
