# Database Model for Guvi Zen Class with dbdiagram.io

This guide provides step-by-step instructions and guidelines for creating a database model using dbdiagram.io, a popular online tool for designing database schemas.

## Getting Started

1. **Access dbdiagram.io:** Open your web browser and visit [dbdiagram.io](https://dbdiagram.io/).

2. **Sign In or Create an Account:** If you already have an account, sign in. Otherwise, create a new account to save your work.

## Designing Your Database Model

3. **Create a New Diagram:**
   - Click on the "Create New Diagram" button.
   - Give your diagram a name, such as "Guvi Zen Class Database Model."

4. **Add Tables:**
   - Click the "Table" icon to add tables to your diagram.
   - Name your tables to reflect the entities in your database model.

5. **Add Columns:**
   - Inside each table, add columns to define the attributes of your entities.
   - Specify the data type for each column (e.g., INT, VARCHAR, DATE).
   - Indicate primary keys, foreign keys, and unique constraints.

6. **Establish Relationships:**
   - Use lines to connect tables and define relationships (one-to-one, one-to-many, many-to-many).
   - Label the relationships to clarify their nature.

**Example Tables and Relationships for Zen Class Database**

### Students Table

- `studentid` (Primary Key, INT, AUTO_INCREMENT)
- `studentname` (VARCHAR(255))
- `mobilenumber` (VARCHAR(255), UNIQUE)
- `email` (VARCHAR(255), UNIQUE)
- `mentorname` (VARCHAR(255))
- `batchid` (INT)
- `batchname` (VARCHAR(255))

### Tasks Table

- `taskid` (Primary Key, INT, AUTO_INCREMENT)
- `taskname` (VARCHAR(255), UNIQUE)
- `studentid` (INT)
- `mentorid` (INT)
- `mentorname` (VARCHAR(25))
- `batchname` (VARCHAR(50))

### Mentors Table

- `mentorid` (Primary Key, INT, AUTO_INCREMENT)
- `email` (VARCHAR(50), UNIQUE)
- `contactno` (VARCHAR(15), UNIQUE)
- `assignedbatch` (VARCHAR(100))

### Batches Table

- `batchid` (Primary Key, INT, AUTO_INCREMENT)
- `batchname` (VARCHAR(255))
- `totalstudents` (INT)
- `mentorid` (INT)

### Queries Table

- `queryid` (Primary Key, INT, AUTO_INCREMENT)
- `querytext` (TEXT)
- `studentid` (INT)
- `mentorid` (INT)

### Dashboards Table

- `dashboardid` (Primary Key, INT, AUTO_INCREMENT)
- `studentid` (INT)
- `mentorid` (INT)
- `batchid` (INT)

### Mock Interviews Table

- `mockinterviewid` (Primary Key, INT, AUTO_INCREMENT)
- `studentid` (INT)
- `mentorid` (INT)
- `batchid` (INT)
  
## Foreign Key Relationships

- The `studentinfo` table references the `batchinfo` table via `batchid`.
- The `taskinfo` table references the `studentinfo` table via `studentid`.
- The `taskinfo` table references the `mentorinfo` table via `mentorid`.
- The `batchinfo` table references the `mentorinfo` table via `mentorid`.
- The `queryinfo` table references the `studentinfo` table via `studentid`.
- The `queryinfo` table references the `mentorinfo` table via `mentorid`.
- The `dashboardinfo` table references the `studentinfo` table via `studentid`.
- The `dashboardinfo` table references the `mentorinfo` table via `mentorid`.
- The `dashboardinfo` table references the `batchinfo` table via `batchid`.
- The `mockinterviewinfo` table references the `studentinfo` table via `studentid`.
- The `mockinterviewinfo` table references the `mentorinfo` table via `mentorid`.
- The `mockinterviewinfo` table references the `batchinfo` table via `batchid`.

## Exporting Your Model

7. **Export as SQL or Image:**
    - Once your model is complete, export it as SQL code and as an image.
    - You can use the generated SQL code to create your database schema.

## Sharing and Collaboration

8. **Share Your Diagram:**
    - Share your diagram by clicking the "Share" button and providing collaborators with the link.
    - Click here to view this db design: [Guvi Zen Class Database Model](https://dbdiagram.io/d/64fa042602bd1c4a5e2a058d)

Happy modeling!