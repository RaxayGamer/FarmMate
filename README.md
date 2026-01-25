# FarmMate - AI Powered Farming Assistant

A complete farming assistant application with AI-powered recommendations, disease detection, weather alerts, and chatbot support.

## 🌾 Features

- **Crop Recommendation** - ML-based crop suggestions based on soil & weather
- **Fertilizer Recommendation** - Smart fertilizer suggestions
- **Leaf Disease Detection** - Image-based disease detection
- **Weather Forecasts** - Real-time weather alerts
- **AI Chatbot** - Bilingual support (English & Malayalam)
- **Daily Activities** - Personalized farming task management
- **Farm Records** - Track crops, expenses, and historical data
- **Voice Recognition** - Hands-free interaction

## 📁 Project Structure

```
FarmMate_Fresh/
├── backend/
│   ├── app.py                 # Flask API server
│   ├── requirements.txt       # Python dependencies
│   ├── .env                   # Environment variables (Groq API key)
│   └── models/                # ML model files (.pkl)
└── frontend/
    └── templates/
        └── index.html         # Standalone frontend application
```

## 🚀 Setup Instructions

### 1. Backend Setup

```bash
# Navigate to backend folder
cd FarmMate_Fresh/backend

# Create virtual environment (optional but recommended)
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Create .env file with your Groq API key
echo groq_api_key=your_groq_api_key_here > .env

# Run the Flask server
python app.py
```

The backend server will start at `http://localhost:5000`

### 2. Frontend Setup

```bash
# Navigate to frontend folder
cd FarmMate_Fresh/frontend/templates

# Open index.html in your browser
# Or use a simple HTTP server:

# Python 3:
python -m http.server 8000

# Or Node.js:
npx http-server -p 8000
```

Then open `http://localhost:8000/index.html` in your browser.

**Note:** You can also directly open `index.html` in your browser as it's a standalone file.

## 🔑 Environment Variables

Create a `.env` file in the `backend/` folder:

```env
groq_api_key=your_groq_api_key_here
```

Get your Groq API key from: https://console.groq.com/

## 📦 Dependencies

### Backend Requirements:
- Flask 3.0.0
- Flask-CORS 4.0.0
- NumPy 1.24.3
- Pandas 2.0.3
- scikit-learn 1.3.0
- Pillow 10.1.0
- Groq 0.4.2
- python-dotenv 1.0.0

### Frontend:
- Pure HTML, CSS, JavaScript
- Font Awesome 6.0.0 (CDN)
- No build tools required

## 🔧 API Endpoints

```
GET  /api/health                - Health check
POST /api/recommend-crop        - Crop recommendation
POST /api/recommend-fertilizer  - Fertilizer suggestion
POST /api/analyze-leaf          - Leaf disease detection
POST /api/weather               - Weather forecast
POST /api/chatbot               - AI chatbot
GET  /api/farm-records          - Farm records
```

## 💡 Usage

1. **Start Backend**: Run `python app.py` in backend folder
2. **Open Frontend**: Open `index.html` in browser
3. **Login/Signup**: Create account or login
4. **Use Features**:
   - Check daily activities
   - Get crop recommendations
   - Upload leaf images for disease detection
   - Chat with AI assistant
   - View weather forecasts
   - Track farm records

## 🎯 Key Features

### Daily Activities
- Automatic task generation based on crops
- Watering schedules
- Fertilizer application reminders
- Pest inspection alerts
- Complete/Skip task tracking

### User Authentication
- Local storage-based authentication
- Username and password login
- User profile management
- Personalized content

### Farm Records
- Horizontal tabular format
- Current crops tracking
- Historical harvest data
- Expense breakdown
- Full-width display

## 🌐 Browser Compatibility

- Chrome (Recommended)
- Firefox
- Edge
- Safari

**Note:** Voice recognition requires Chrome/Edge for best support.

## 📝 Models Required

Place the following model files in `backend/models/`:
- `crop_recommendation_model.pkl`
- `crop_encoder.pkl`
- `fertilizer_model.pkl`
- `fertilizer_encoder.pkl`
- `soil_encoder.pkl`
- `disease_detection_model.pkl`
- `disease_encoder.pkl`

## 🔒 Security Note

This application uses localStorage for authentication, which is suitable for demo/development purposes. For production, implement proper backend authentication with JWT tokens and a database.

## 🐛 Troubleshooting

### Backend won't start:
- Check if port 5000 is available
- Ensure all dependencies are installed
- Verify .env file exists with valid Groq API key

### Frontend can't connect to backend:
- Ensure backend is running on http://localhost:5000
- Check browser console for CORS errors
- Verify API_BASE constant in index.html

### Models not loading:
- Copy model files from FarmMate/backend/models/ to FarmMate_Fresh/backend/models/
- Ensure all .pkl files are present

## 📄 License

MIT License - Feel free to use and modify.

## 👨‍💻 Developer

FarmMate - AI Powered Farming Assistant for Kerala Farmers

---

**Happy Farming! 🌾**
