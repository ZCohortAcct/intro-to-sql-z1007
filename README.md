# Intro to SQL

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
SELECT * FROM artists;
```

2. Write the SQL to select the artist with the name "Maroon 5"

```SQL
SELECT * FROM artists WHERE name = 'Maroon 5';
```

- What's the difference between challenge 1 & 2
  challenge?
  - Challenge 2 gets SPECIFIC data from the table

3. Are there other filers are there to filter data with a WHERE clause?

Using *LIKE*
```SQL
SELECT * FROM artists WHERE name LIKE '%maroon 5';
  -pulls data that has ENDS with the text 'maroon 5', case NOT important 
SELECT * FROM artists WHERE name LIKE 'maroon 5%';
  -pulls data that has BEGINS with the text 'maroon 5', case NOT important 
SELECT * FROM artists WHERE name LIKE '%maroon 5%';
  -pulls data HAS the text 'maroon 5' in it, case NOT important 
```

Using *LESS THAN & GREATER THAN*
```SQL
SELECT * FROM artists WHERE name < 'Maroon 5';
SELECT * FROM artists WHERE name >  'Maroon 5';
```

4. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans(
  id INTEGER PRIMARY KEY,
  name TEXT);
```

5. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
ALTER TABLE fans ADD COLUMN artist_id INTEGER;
```

- Why adding adding a foreign key column?
  - answer

6. Write the SQL to add yourself as a fan of the Maroon 5? ArtistId **39**

```sql
INSERT INTO fans(name, artist_id) VALUES ('Z McGlynn', 39)
```


7. Check out the [Faker gem](https://github.com/stympy/faker). `gem install faker`, open up irb, run `require 'faker'` and then generate a fake name for yourself using `Faker::Name.name`. How would you update your name in the fans table to be your new name?

```sql

```

8. Write the SQL to return fans that are not fans of Maroon 5.

```sql

```

9. Write the SQL to display an artists name next to their album title

```sql

```

10. Write the SQL to display artist name, album name and number of tracks on that album

```sql

```

11. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql
SELECT Artists.name  FROM artists WHERE Artists.genre_id = 13;
```

## BONUS (very hard)
12. Return the names of the artists in the pop genre and the number of tracks they have in their albums if the ablum has more then than 20 tracks and order of the number of pop tracks that they have from greatest to least

```sql

```
