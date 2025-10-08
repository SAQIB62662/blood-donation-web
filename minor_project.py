from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

# ✅ Database connection function
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="saqib",            # apna MySQL username
        password="SAQIBMANNA9",  # apna MySQL password
        database="blood_donation"
    )

# ✅ Home Page – Search Form
@app.route('/')
def home():
    return render_template('index.html')

# ✅ Donor Registration Page
@app.route('/register')
def register_page():
    return render_template('register.html')

# ✅ Save Donor Data
@app.route('/add_donor', methods=['POST'])
def add_donor():
    name = request.form['name']
    age = int(request.form['age'])   # convert to integer
    blood_group = request.form['blood_group']
    contact = request.form['contact']
    location = request.form['location']

    # ✅ Check donor age
    if age < 18 or age > 70:
        return render_template(
            "error.html",
            message="❌ Age must be between 18 and 70 to donate blood."
        )

    # ✅ Insert into database
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute(
        "INSERT INTO donors (name, age, blood_group, contact, location) VALUES (%s, %s, %s, %s, %s)",
        (name, age, blood_group, contact, location)
    )
    conn.commit()
    conn.close()

    return render_template("success.html", name=name)

# ✅ Search Donors
@app.route('/search', methods=['POST'])
def search():
    location = request.form['location']
    blood_group = request.form['blood_group']

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(
        "SELECT * FROM donors WHERE location LIKE %s AND blood_group=%s",
        (f"%{location}%", blood_group)
    )
    donors = cursor.fetchall()
    conn.close()

    return render_template('result.html', donors=donors)

# ✅ Run Flask
if __name__ == '__main__':
    app.run(debug=True)
