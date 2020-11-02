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
