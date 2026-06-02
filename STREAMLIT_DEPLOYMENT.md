# 🚀 Streamlit Cloud Deployment Guide

## Step-by-Step Deployment Instructions

### 1. Prerequisites
- ✅ GitHub account (you already have this)
- ✅ Code pushed to GitHub (done!)
- ✅ Gemini API key ready

### 2. Deploy to Streamlit Cloud

#### A. Go to Streamlit Cloud
1. Visit: https://share.streamlit.io/
2. Click **"Sign in"** (use your GitHub account)
3. Click **"New app"**

#### B. Configure Your App
Fill in the deployment form:
- **Repository:** `Dhruvraj707/AIR-Dashboard`
- **Branch:** `main`
- **Main file path:** `app.py`
- **App URL:** Choose a custom URL (e.g., `air-dashboard`)

#### C. Add Your Secrets
1. Click **"Advanced settings"** at the bottom
2. In the **"Secrets"** section, add:
   ```toml
   GEMINI_API_KEY = "AIzaSyB4rhxaqLIkkjRkdyHj4rJjKAHbPCDVVT8"
   ```
3. Click **"Save"**

#### D. Deploy!
1. Click **"Deploy!"**
2. Wait 2-5 minutes for deployment
3. Your app will be live at: `https://your-app-name.streamlit.app`

### 3. After Deployment

Your app will be available at a URL like:
```
https://air-dashboard-your-username.streamlit.app
```

### 4. Managing Your App

#### Update Your App
Any time you push to GitHub, the app will automatically redeploy:
```bash
git add .
git commit -m "Update message"
git push origin main
```

#### View Logs
- Click the **"☰"** menu in your deployed app
- Select **"Manage app"**
- View logs to debug any issues

#### Update Secrets
- Go to: https://share.streamlit.io/
- Find your app
- Click **"⋮"** → **"Settings"** → **"Secrets"**

### 5. Important Notes

#### ⚠️ Webcam Limitations
Streamlit Cloud has limitations with webcam access:
- `streamlit-webrtc` may have issues on cloud deployment
- Users need to grant camera permissions
- HTTPS is required (Streamlit Cloud provides this)

#### 🔧 If Webcam Doesn't Work
The app uses `streamlit-webrtc` which requires WebRTC. If you encounter issues:
1. Check browser console for errors
2. Ensure HTTPS connection
3. Grant camera permissions when prompted
4. Try different browsers (Chrome/Edge work best)

#### 🎯 Alternative for Better Webcam Support
If webcam issues persist, consider:
1. **Railway.app** - Better for Python apps with hardware access
2. **Render.com** - Free tier with better WebRTC support
3. **Heroku** - Paid but reliable for Streamlit

### 6. Monitoring

Check your app status:
- **App dashboard:** https://share.streamlit.io/
- **Resource usage:** Available in app settings
- **Logs:** Real-time in the management console

### 7. Free Tier Limits

Streamlit Community Cloud (Free):
- ✅ Unlimited public apps
- ✅ 1 GB RAM per app
- ✅ 1 CPU core
- ✅ Auto-sleep after inactivity
- ✅ Automatic HTTPS

### 8. Troubleshooting

#### Deployment Fails
- Check `requirements.txt` syntax
- Ensure all imports are listed
- Check logs for specific errors

#### App is Slow
- Free tier has limited resources
- Multiple users will slow down the app
- Consider upgrading to Streamlit Cloud Pro

#### Webcam Issues
- Browser security blocks camera on some deployments
- Ensure HTTPS connection
- Try the app locally first to verify functionality

---

## 🎉 Quick Deploy Checklist

- [ ] Code pushed to GitHub
- [ ] Signed in to Streamlit Cloud
- [ ] Created new app with correct repository
- [ ] Added `GEMINI_API_KEY` to secrets
- [ ] Clicked "Deploy!"
- [ ] Waited for deployment to complete
- [ ] Tested the app URL
- [ ] Granted camera permissions

---

**Your repository:** https://github.com/Dhruvraj707/AIR-Dashboard
**Deploy URL:** https://share.streamlit.io/

Happy deploying! 🚀
