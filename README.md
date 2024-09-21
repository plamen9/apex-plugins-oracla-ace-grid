# Oracle ACE Grid Template Component for APEX
[![APEX Community](https://cdn.rawgit.com/Dani3lSun/apex-github-badges/78c5adbe/badges/apex-community-badge.svg)](https://apex.oracle.com/pls/apex/r/gamma_dev/demo/) [![APEX Plugin](https://cdn.rawgit.com/Dani3lSun/apex-github-badges/b7e95341/badges/apex-plugin-badge.svg)](https://apex.oracle.com/pls/apex/r/gamma_dev/demo/)
[![APEX Built with Love](https://cdn.rawgit.com/Dani3lSun/apex-github-badges/7919f913/badges/apex-love-badge.svg)](https://apex.oracle.com/pls/apex/r/gamma_dev/demo/)

## Preview
![Oracle ACE Grid of images](https://raw.githubusercontent.com/plamen9/apex-plugins-oracla-ace-grid/main/demo_1.jpg "Oracle ACE Grid of images")

## Description
A Template Component for Oracle APEX (24.1 and above). Oracle ACE Grid Template Component for APEX allows you to create grid of images, with a main one at the top left. You can set the image size, border radius and links of the images. It accepts BLOBs, image URLS, REST services as source.

## Demo Application
[https://apex.oracle.com/pls/apex/r/gamma_dev/oracle-ace/](https://apex.oracle.com/pls/apex/r/gamma_dev/oracle-ace/)

## Installation
- Import plugin file `plugin_oracle_ace_grid_tc.sql` into your application
- (Optional) Deploy the CSS/JS files from `server` directory on your webserver and change the "File Prefix" to web servers folder (Inside the Plugin Settings).

## Usage
🔸 As a `Multiple (Report)`
- Create a new Region of type `Oracle ACE Grid - TC`. You can use any type of source for the data. Here is an example of a `SQL Query`:
```sql
 select null filename,
        null mimetype,
        'https://ace.oracle.com/pls/apex/r/ace_program/600000/files/static/v229/images/artwork-1c.png' header_image, 'Oracle ACE TC' header_text,
        null grid_image, null grid_text, null grid_link
from dual
union all
select filename,
       mimetype,
       null header_image, null header_text,
       profile_image grid_image, filename grid_text,
       ace_profile_url grid_link
  from eba_demo_card_emp
```
> **Note that the query needs to have one part for the Header Image and another for Grid Images. When Header Image is not null, the row is used as a header, otherwise - as Grid Image.*
- Go to the Region `Attributes` section. From `Appearance` \ `Diisplay` select `Multiple (Report)`.
- Map the query columns to the relevant attributes from the list (full list of options and their description - below).
- If using `Image URL` as source for the Grid/Header Image (like the `Header Image` in the example above), select `Source` of type `URL Column` and `URL Column` as `HEADER_IMAGE`
- If using `BLOB Column` as source for the Grid/Header Image (like in the `Grid Image` in the example above), select `Source` of type `BLOB Column` and pick `FILENAME` and `MIMETYPE` columns from your query. These two are mandatory for rendering the image.
- `Grid Link` could be assigned to any of the images in the grid and will be used as a link when users click on the image.
- `Display Options` are used for setting the size of each image and their border radius (in pixels).

## Additional use cases
You can filter the query using any item on your APEX page. For example filtering the grid by ACE levels:
```sql
select filename,
       mimetype,
       null header_image, null header_text,
       profile_image grid_image, filename grid_text,
       ace_profile_url grid_link,
       ace_level
  from eba_demo_card_emp
where ace_level = :P2_ACE_LEVEL  
```

## Sample app
You can also install the APEX Sample app that uses the Oracle ACE Grid Template Component. 
You will need to have the `eba_demo_card_emp` table, which comes with some of the APEX sample apps.
