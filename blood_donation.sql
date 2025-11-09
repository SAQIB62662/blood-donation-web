DROP DATABASE IF EXISTS blood_donation;
CREATE  DATABASE blood_donation;

USE blood_donation;
DELETE FROM donors

CREATE TABLE donors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,DROP DATABASE IF EXISTS blood_donation;
CREATE  DATABASE blood_donation;

USE blood_donation;
DELETE FROM donors

CREATE TABLE donors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    blood_group VARCHAR(5),
    location VARCHAR(100),
    contact VARCHAR(20)
);

INSERT INTO donors (name, age, blood_group, location, contact)
VALUES 
('Ahmed Khan', 29, 'A+', 'Delhi', '9876543210'),
('Sara Ali', 24, 'O-', 'Delhi', '9988776655'),


SELECT * FROM donors;
DELETE FROM donors WHERE id = 61;



    blood_group VARCHAR(5),
    location VARCHAR(100),
    contact VARCHAR(20)
);

INSERT INTO donors (name, age, blood_group, location, contact)
VALUES 
('Ahmed Khan', 29, 'A+', 'Delhi', '9876543210'),
('Sara Ali', 24, 'O-', 'Delhi', '9988776655'),

-- Maharashtra
('Rohit Sharma', 32, 'B+', 'Mumbai', '9123456789'),
('Priya Patil', 27, 'AB+', 'Pune', '9012345678'),

-- Uttar Pradesh
('Arjun Yadav', 30, 'O+', 'Lucknow', '9345678901'),
('Neha Singh', 26, 'B-', 'Varanasi', '9456123789'),

-- Bihar
('Ravi Kumar', 35, 'A-', 'Patna', '9765432109'),
('Anjali Verma', 22, 'O+', 'Gaya', '9654783210'),

-- West Bengal
('Sourav Das', 28, 'B+', 'Kolkata', '9832109876'),
('Mita Roy', 25, 'AB-', 'Siliguri', '9123987456'),

-- Tamil Nadu
('Karthik Subramanian', 31, 'O-', 'Chennai', '9876501234'),
('Divya Ramesh', 23, 'A+', 'Coimbatore', '9345098761'),

-- Karnataka
('Ramesh Gowda', 29, 'B-', 'Bengaluru', '9988123456'),
('Sneha Shetty', 24, 'O+', 'Mysuru', '9776678901'),

-- Kerala
('Anand Nair', 34, 'A+', 'Kochi', '9898765432'),
('Lakshmi Pillai', 28, 'O-', 'Thiruvananthapuram', '9543126789'),

-- Rajasthan
('Vikram Rathore', 36, 'AB+', 'Jaipur', '9876012345'),
('Pooja Choudhary', 25, 'B+', 'Udaipur', '9654123098'),

-- Punjab
('Harpreet Singh', 33, 'O+', 'Amritsar', '9812345678'),
('Simran Kaur', 27, 'A-', 'Ludhiana', '9123567890'),

-- Haryana
('Manoj Dahiya', 31, 'B+', 'Gurgaon', '9876540987'),
('Sakshi Malik', 23, 'O+', 'Faridabad', '9123456709'),

-- Gujarat
('Jay Patel', 29, 'A+', 'Ahmedabad', '9898012345'),
('Hetal Shah', 26, 'O-', 'Surat', '9765098321'),

-- Madhya Pradesh
('Amit Tiwari', 34, 'AB+', 'Bhopal', '9654123078'),
('Ruchi Sharma', 28, 'B-', 'Indore', '9988771122'),

-- Odisha
('Debasish Nayak', 30, 'O+', 'Bhubaneswar', '9856123098'),
('Sweta Mishra', 24, 'A-', 'Cuttack', '9754321890'),

-- Assam
('Rahul Deka', 32, 'B+', 'Guwahati', '9123456123'),
('Mousumi Das', 25, 'O-', 'Silchar', '9876540981'),

-- Jharkhand
('Sanjay Mahto', 29, 'A+', 'Ranchi', '9988772233'),
('Poonam Kumari', 22, 'B-', 'Jamshedpur', '9765123098'),

-- Himachal Pradesh
('Karan Thakur', 33, 'O+', 'Shimla', '9876509876'),
('Anita Rana', 26, 'AB-', 'Manali', '9345126789'),

-- Uttarakhand
('Deepak Joshi', 30, 'B+', 'Dehradun', '9543012789'),
('Shalini Rawat', 24, 'A-', 'Haridwar', '9765432108'),

-- Chhattisgarh
('Raghav Sahu', 31, 'O+', 'Raipur', '9876123450'),
('Priya Gupta', 23, 'B-', 'Bilaspur', '9654789012'),

-- Telangana
('Sai Krishna', 27, 'A+', 'Hyderabad', '9988774455'),
('Anusha Reddy', 25, 'O-', 'Warangal', '9765098760'),

-- Andhra Pradesh
('Ravi Teja', 34, 'AB+', 'Vijayawada', '9876012340'),
('Sowmya Rao', 28, 'B+', 'Visakhapatnam', '9654321098'),

-- Jammu & Kashmir
('Adil Mir', 29, 'O+', 'Srinagar', '9876012390'),
('Shazia Lone', 26, 'A-', 'Jammu', '9123678901'),

-- Goa
('Rohit Naik', 30, 'B+', 'Panaji', '9898765012'),
('Sneha Prabhu', 24, 'O-', 'Margao', '9765984321'),

-- Tripura
('Abhijit Saha', 27, 'A+', 'Agartala', '9876546789'),
('Moumita Paul', 23, 'O+', 'Udaipur (Tripura)', '9543216789'),

-- Meghalaya
('David Marak', 32, 'B-', 'Shillong', '9765098712'),
('Riya Sangma', 25, 'A+', 'Tura', '9123098765'),

-- Manipur
('Lalremruata', 28, 'O-', 'Imphal', '9876098765'),
('Chanu Devi', 23, 'B+', 'Thoubal', '9543098761'),

-- Nagaland
('Temsu Ao', 31, 'A+', 'Kohima', '9876543211'),
('Aienla Jamir', 24, 'O+', 'Dimapur', '9765098710'),

-- Mizoram
('Rohlupuii', 26, 'B+', 'Aizawl', '9876509845'),
('Vanlalruati', 22, 'AB-', 'Lunglei', '9654789015'),

-- Sikkim
('Karma Lepcha', 29, 'A-', 'Gangtok', '9876012349'),
('Sonam Bhutia', 27, 'O+', 'Namchi', '9765987450'),

-- Arunachal Pradesh
('Tsering Wangchu', 33, 'O-', 'Itanagar', '9988775566'),
('Mimi Tayang', 25, 'B+', 'Pasighat', '9876012399');
SELECT * FROM donors;
DELETE FROM donors WHERE id = 61;


