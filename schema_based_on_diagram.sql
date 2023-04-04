CREATE TABLE patients (
  id int GENERATED ALWAYS AS IDENTITY,
  name varchar(100),
  date_of_birth date,
  PRIMARY KEY(id)
);