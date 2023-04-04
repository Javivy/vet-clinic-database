CREATE TABLE patients (
  id int GENERATED ALWAYS AS IDENTITY,
  name varchar(100),
  date_of_birth date,
  PRIMARY KEY(id)
);

CREATE TABLE invoices (
  id int GENERATED ALWAYS AS IDENTITY,
  total_amount decimal,
  generated_at timestamp,
  payed_at timestamp,
  medical_history_id int
);