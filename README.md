## Bookmark Manager

#### User Stories
As a user,
So I can organise my bookmarks,
I'd like to view a list of my bookmarks

#### Domain Modelling
|Nouns| Property or owner of property? |
|-----|---------------------|
|bookmark_list|property|

|Actions| Owned by? |
|-----|---------------------|
|show_list|bookmark_list|

|Actions| Property it reads or changes |
|-----|---------------------|
|show_list|bookmark_list|

|Class| BookmarkList|
|-----|-------|
|Properties (instance/class variables)| bookmark|
|Actions (methods)|show_list|

#### Create bookmarks table

Enter the following commands in command line

1. Connect to ```psql```
2. Create the database ```CREATE DATABASE bookmark_manager;```
3. Connnect to the database ```\c bookmark_manager;```
4. Run this query we created to create the table ```01_create_bookmarks_table.sql```
5. Add another column by running this query ```02_add_title_column.sql```


#### Create test database with bookmarks table

Enter the following commands in command line

1. Connect to ```psql```
2. Create the database ```CREATE DATABASE test_bookmark_manager;```
3. Connnect to the database ```\c test_bookmark_manager;```
4. Run this query we created to create the table ```01_create_bookmarks_table.sql```
5. Add another column by running this query ```02_add_title_column.sql```
