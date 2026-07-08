from flask import Flask, render_template, request, redirect, url_for
import json, os
from flask_mysqldb import MySQL
app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'market_demand'
mysql = MySQL(app)

# ======= Load or create crops data =======
DATA_FILE = 'data/crops.json'
os.makedirs('data', exist_ok=True)

if not os.path.exists(DATA_FILE):
    with open(DATA_FILE, 'w') as f:
        json.dump([], f)

USERS_FILE = 'data/users.json'
if not os.path.exists(USERS_FILE):
    with open(USERS_FILE, 'w') as f:
        json.dump([], f)

# ======= Hardcoded market prices =======
MARKET_PRICES = {
    "Wheat": 2200,
    "Rice": 2400,
    "Maize": 1800,
    "Sugarcane": 3000,
    "Cotton": 6000,
    "Soybean": 4200,
    "Barley": 2000,
    "Potato": 1500,
    "Tomato": 1600,
    "Onion": 1700,
    "Garlic": 2500,
    "Chili": 7000,
    "Groundnut": 5200,
    "Mustard": 5500,
    "Peas": 2200,
    "Banana": 1000,
    "Mango": 8000,
    "Apple": 9000,
    "Grapes": 7000,
    "Pomegranate": 8000,
    "Papaya": 3500,
    "Lemon": 4000,
    "Guava": 3000,
    "Coconut": 12000,
    "Paddy": 2300,
    "Millet": 2100,
    "Carrot": 1800,
    "Cauliflower": 1700,
    "Cabbage": 1600,
    "Spinach": 1300,
    "Brinjal": 1400,
    "Lady Finger": 1500,
    "Pumpkin": 1200,
    "Bitter Gourd": 1600,
    "Bottle Gourd": 1100,
    "Coriander": 5000,
    "Turmeric": 9000,
    "Ginger": 7000,
    "Coffee": 25000,
    "Tea": 30000,
    "Rubber": 15000,
    "Jute": 4000,
    "Tobacco": 7000,
    "Sunflower": 4800,
    "Sesame": 6000,
    "Lentil": 6500,
    "Chickpea": 5200,
    "Black Gram": 5400,
    "Green Gram": 5000,
    "Sugar beet": 3500
}

# ======= Routes =======
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        details = request.form
        email = details.get('email')
        password = details.get('password')
        
        with open(USERS_FILE, 'r') as f:
            users = json.load(f)
            
        user = next((u for u in users if u.get('email') == email and u.get('password') == password), None)
        
        if user:
            return redirect(url_for('dashboard'))
        else:
            return render_template('login.html', msg="Login failed! Invalid email or password.")
    return render_template('login.html')


@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        details = request.form
        name = details.get('name')
        phone = details.get('phone')
        address = details.get('address')
        email = details.get('email')
        password = details.get('password')
        
        with open(USERS_FILE, 'r') as f:
            users = json.load(f)
            
        users.append({
            "name": name,
            "phone": phone,
            "address": address,
            "email": email,
            "password": password
        })
        
        with open(USERS_FILE, 'w') as f:
            json.dump(users, f, indent=2)
            
        return "<script>alert('Registration successful! Please login.'); window.location.href='/login';</script>"
    return render_template('register.html')

@app.route('/add_crop',methods=["GET","POST"])
def add_crop():
    if request.method == 'POST':
        details = request.form
        crop_name = details['crop_name']
        price = details['price']
        quality = details['quality']
        cur = mysql.connection.cursor()
        cur.execute("insert into tbl_crop(crop_name,price,quality) values(%s,%s,%s)",(crop_name,price,quality))
        mysql.connection.commit()
        cur.close()
        return "<script>alter('record inserted');</script>"
    return redirect('dashboard.html')


@app.route('/delete_crop',methods=['POST'])
def delete_crop():
    crop_id = request.form.get('id')
    with open(DATA_FILE, 'r') as f:
        crops = json.load(f)
    
    crops = [c for c in crops if c.get('id') != crop_id]
    
    with open(DATA_FILE, 'w') as f:
        json.dump(crops, f, indent=2)
        
    return redirect(url_for('dashboard'))

@app.route('/update_crop',methods=['POST'])
def update_crop():
    details = request.form
    crop_id = details.get('id')
    price = details.get('price')
    quality = details.get('quality')
    
    with open(DATA_FILE, 'r') as f:
        crops = json.load(f)
        
    for c in crops:
        if c.get('id') == crop_id:
            c['price'] = price
            c['quality'] = quality
            break
            
    with open(DATA_FILE, 'w') as f:
        json.dump(crops, f, indent=2)
        
    return redirect(url_for('dashboard'))


@app.route('/dashboard', methods=['GET', 'POST'])
def dashboard():
    if request.method == 'POST':
        details = request.form
        crop_name = details.get('crop_name')
        price = details.get('price')
        quality = details.get('quality')

        # Ignore empty submissions
        if crop_name:
            import uuid
            crop_id = str(uuid.uuid4())

            with open(DATA_FILE, 'r') as f:
                crops = json.load(f)

            crops.append({
                "id": crop_id,
                "crop_name": crop_name,
                "price": price,
                "quality": quality,
                "market_price": MARKET_PRICES.get(crop_name,"N/A")
            })

            with open(DATA_FILE, 'w') as f:
                json.dump(crops, f, indent=2)

        return redirect(url_for('dashboard'))

    with open(DATA_FILE, 'r') as f:
        crops = json.load(f)

    return render_template('/dashboard.html', crops=crops, market_prices=MARKET_PRICES)



if __name__ == '__main__':
    app.run(debug=True)