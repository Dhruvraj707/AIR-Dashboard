# Air Dashboard - Local Deployment Guide

## ✅ Fixed Issues

1. **Missing `string` module import** - Added `import string` to `main2.py`
2. **Missing `screen_shot` directory** - Added automatic directory creation in code
3. **Button coordinate scaling issues** - Fixed button detection coordinates for the 1200x1200 canvas
4. **Text positioning** - Improved text positioning for status messages

## 🚀 Local Deployment Instructions

Since this project is not being deployed to Vercel or Streamlit Cloud, follow these steps to run it locally:

### Prerequisites

1. **Python 3.8 or higher** installed on your system
2. **Webcam** connected and accessible
3. **Windows OS** (as indicated by your environment)

### Installation Steps

1. **Install Python dependencies:**
   ```cmd
   pip install -r requirements.txt
   ```

2. **Verify your .env file:**
   Make sure your `.env` file contains your Gemini API key:
   ```
   GEMINI_API_KEY=your_api_key_here
   ```

3. **Install system dependencies (if needed):**
   The packages in `packages.txt` are Linux dependencies. On Windows, you typically don't need these as they're included with OpenCV wheels.

### Running the Application

#### Option 1: Main App (Recommended)
```cmd
streamlit run app.py
```

This will:
- Show the landing page
- Allow you to choose between "Start Drawing" or "Sign Drawing"
- Provide full application functionality

#### Option 2: Direct Drawing App
```cmd
streamlit run main2.py
```

This runs the virtual paint app directly.

#### Option 3: Advanced Sign Language Drawing
```cmd
streamlit run advanced_draw.py
```

This runs the sign language visualizer app.

### Expected Behavior

1. **Landing Page** - Beautiful animated landing page with options to start
2. **Virtual Paint** - Hand gesture-controlled drawing with AI analysis
3. **Sign Language** - Advanced drawing with MediaPipe hand tracking

### Port Configuration

By default, Streamlit runs on port **8501**. If you need a different port:

```cmd
streamlit run app.py --server.port 8080
```

### Network Access

To make it accessible on your local network:

```cmd
streamlit run app.py --server.address 0.0.0.0
```

Then access from other devices using: `http://YOUR_IP_ADDRESS:8501`

## 🐛 Troubleshooting

### Camera Not Working
- Grant camera permissions to your browser
- Check if another application is using the camera
- Try a different browser (Chrome works best with WebRTC)

### Import Errors
Make sure all dependencies are installed:
```cmd
pip install --upgrade -r requirements.txt
```

### Port Already in Use
```cmd
streamlit run app.py --server.port 8502
```

### Performance Issues
- Lower the resolution in settings
- Close other applications using the camera
- Use a better lighting environment for better tracking

## 📝 Alternative Deployment Options

### Docker Deployment

Create a `Dockerfile`:

```dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libsm6 \
    libxrender1 \
    libxext6 \
    libfontconfig1 \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.address", "0.0.0.0"]
```

Build and run:
```cmd
docker build -t air-dashboard .
docker run -p 8501:8501 air-dashboard
```

### Windows Executable (PyInstaller)

If you want to create a standalone executable:

```cmd
pip install pyinstaller
pyinstaller --onefile --windowed app.py
```

Note: Streamlit apps don't package well with PyInstaller. Consider using a different approach or keep it as a Python script.

### Network Share Deployment

1. Share the project folder on your network
2. Other users can run it by:
   - Installing Python and dependencies
   - Running `streamlit run \\\\COMPUTER_NAME\\share_path\\app.py`

## 🔒 Security Notes

- **API Key**: Your Gemini API key is in `.env`. Keep this file secure and don't share it.
- **Network Access**: If exposing on network, consider adding authentication
- **Firewall**: Allow Streamlit through Windows Firewall if needed

## 📞 Support

For issues specific to:
- **OpenCV/Camera**: Check OpenCV documentation
- **Streamlit**: Check Streamlit documentation
- **Gemini AI**: Check Google Generative AI documentation

## 🎉 Features Ready to Use

✅ Gesture-based drawing
✅ AI-powered analysis with Gemini
✅ Sign language visualization
✅ Multiple color support
✅ Real-time hand tracking
✅ Canvas saving and downloading
✅ Fullscreen modes
✅ Adjustable settings

Enjoy your Air Dashboard! 🚀
