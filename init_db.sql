CREATE TABLE IF NOT EXISTS worker (
id IDENTITY PRIMARY KEY,
name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2),
birthday DATE CHECK (YEAR(birthday) > 1900), 
level ENUM('Trainee', 'Junior', 'Middle', 'Senior') NOT NULL,         
salary INTEGER CHECK (salary >= 100 AND salary <= 100000)
);



CREATE TABLE IF NOT EXISTS client(
id IDENTITY PRIMARY KEY,
name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2)        
);



CREATE TABLE IF NOT EXISTS project(
id IDENTITY PRIMARY KEY,
client_id BIGINT NOT NULL,               
start_date DATE,
finish_date DATE,
FOREIGN KEY (client_id) REFERENCES client (id)
);



CREATE TABLE IF NOT EXISTS project_worker(
project_id BIGINT NOT NULL,
worker_id BIGINT NOT NULL,
PRIMARY KEY (project_id, worker_id),
FOREIGN KEY (project_id) REFERENCES project(id),
FOREIGN KEY (worker_id) REFERENCES worker(id)
);









