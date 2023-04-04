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

CREATE TABLE medical_histories (
  id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  admitted_at timestamp,
  patient_id int,
  status varchar(20),
  FOREIGN KEY (patient_id) REFERENCES patients (id)
);

CREATE TABLE treatments (
  id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  type varchar(100),
  name varchar(100)
);

CREATE TABLE medical_history_treatment (
  medical_history_id int ,
  treatment_id int,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id),
  FOREIGN KEY (treatment_id) REFERENCES treatments (id),
  
);