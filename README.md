# sql_practice
An independent project performed to apply SQL knowledge to a data science problem.

After completing the [codecademy course](https://www.codecademy.com/courses/learn-sql) for SQL and reading through [w3schools documentation](https://www.w3schools.com/sql/default.asp) on SQL, I decided to apply what I'd learned via a [small project](https://discuss.codecademy.com/t/data-science-independent-project-2-explore-a-sample-database/419945).

The project provides access to a small sample data set and are asked to answer some questions ranging in difficulty from easy to difficult.

## The Data Set
The data set is located [here](http://www.sqlitetutorial.net/sqlite-sample-database/) and consists of the following tables:

* `employees` table stores employees data such as employee id, last name, first name, etc. It also has a field named ReportsTo to specify who reports to whom.
*  `customers` table stores customers data.
* `invoices` & `invoice_items` tables: these two tables store invoice data. The invoices table stores invoice header data and the invoice_items table stores the invoice line items data.
* `artists` table stores artists data. It is a simple table that contains only artist id and name.
* `albums` table stores data about a list of tracks. Each album belongs to one artist. However, one artist may have multiple albums.
* `media_types` table stores media types such as MPEG audio and AAC audio file.
* `genres` table stores music types such as rock, jazz, metal, etc.
* `tracks` table store the data of songs. Each track belongs to one album.
* `playlists` & `playlist_track` tables: playlists table store data about playlists. Each playlist contains a list of tracks. Each track may belong to multiple playlists. The relationship between the playlists table and tracks table is many-to-many. The playlist_track table is used to reflect this relationship.

## Basic Requirements
### Analyzing the Data
- Which tracks appeared in the most playlists? how many playlist did they appear in?

- Which track generated the most revenue? which album? which genre?

- Which countries have the highest sales revenue? What percent of total revenue does each country make up?

- How many customers did each employee support, what is the average revenue for each sale, and what is their total sale?

## Additional Challenges
### Intermediate Challenge
- Do longer or shorter length albums tend to generate more revenue?
- Is the number of times a track appear in any playlist a good indicator of sales?

### Advanced Challenge
- How much revenue is generated each year, and what is its percent change 1 from the previous year?

Completed in $\approx$ 4 hours.
