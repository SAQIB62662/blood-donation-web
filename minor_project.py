from flask import Flask, render_template, request
import mysql.connector
from math import radians, sin, cos, sqrt, atan2

app = Flask(__name__)

# ✅ Database connection
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="saqib",
        password="SAQIBMANNA9",
        database="blood_donation"
    )

# ✅ Distance formula (Haversine)
def distance_km(lat1, lon1, lat2, lon2):
    R = 6371  # Earth radius in km
    dlat = radians(lat2 - lat1)
    dlon = radians(lon2 - lon1)
    a = sin(dlat / 2) ** 2 + cos(radians(lat1)) * cos(radians(lat2)) * sin(dlon / 2) ** 2
    c = 2 * atan2(sqrt(a), sqrt(1 - a))
    return R * c

# ✅ Home Page (search donors)
@app.route('/')
def home():
    return render_template('index.html')

# ✅ Donor Registration Page
@app.route('/register')
def register_page():
    return render_template('register.html')

# ✅ Save Donor data with GPS
@app.route('/add_donor', methods=['POST'])
def add_donor():
    name = request.form.get('name')
    age = int(request.form.get('age'))
    blood_group = request.form.get('blood_group')
    contact = request.form.get('contact')
    latitude = request.form.get('latitude')
    longitude = request.form.get('longitude')

    if age < 18 or age > 70:
        return render_template("error.html", message="❌ Age must be between 18 and 70 to donate blood.")

    if not latitude or not longitude:
        return render_template("error.html", message="❌ Please allow GPS location to register.")

    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute(
        "INSERT INTO donors (name, age, blood_group, contact, latitude, longitude) VALUES (%s, %s, %s, %s, %s, %s)",
        (name, age, blood_group, contact, latitude, longitude)
    )
    conn.commit()
    conn.close()
    return render_template("success.html", name=name)

# ✅ Search donors near user's location
@app.route('/search', methods=['POST'])
def search():
    blood_group = request.form.get('blood_group')
    user_lat = request.form.get('latitude')
    user_lon = request.form.get('longitude')

    if not user_lat or not user_lon:
        return render_template('error.html', message="❌ Please allow GPS access to find nearby donors.")

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM donors WHERE blood_group = %s", (blood_group,))
    donors = cursor.fetchall()
    conn.close()

    nearby = []
    for d in donors:
        if d['latitude'] and d['longitude']:
            dist = distance_km(float(user_lat), float(user_lon), float(d['latitude']), float(d['longitude']))
            if dist <= 5:
                d['distance'] = round(dist, 2)
                nearby.append(d)

    if not nearby:
        return render_template('error.html', message=f"No {blood_group} donors found within 5 km.")
    else:
        return render_template('result.html', donors=nearby)

# ✅ Run Flask
if __name__ == '__main__':
    app.run(debug=True)
