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
  medical_history_id int,
  PRIMARY KEY(id)
);

CREATE TABLE invoice_items (
  id int GENERATED ALWAYS AS IDENTITY,
  unit_price decimal,
  quantity int,
  total_price decimal,
  invoice_id int,
  treatment_id int,
  FOREIGN KEY (invoice_id) REFERENCES invoices(id),
  PRIMARY KEY(id) 
);