# Meetins Notes - Quick Start Guide

**Version 0.5.0**

Meetins Notes is a local-first meeting transcription and summarization app for macOS. All processing happens on your Mac—no internet required, no data sent anywhere.

---

## Getting Started

### First Launch

1. **Download AI Models**
   - Before your first recording, you need to download two AI models
   - Click the **Settings** gear icon in the toolbar
   - Go to **Transcription** tab → Download a Whisper model (recommend: base or small)
   - Go to **Summary** tab → Download a Llama model (recommend: 8B Instruct)
   - Models are downloaded once and stored locally

2. **Grant Permissions**
   - **Microphone access** - Required to capture your voice
   - **Screen recording permission** - Required to capture system audio (other participants)
   - macOS will prompt you when needed

---

## Recording a Meeting

### Start Recording

1. Click the **Start Recording** button (or press ⌘R)
2. The app will begin capturing:
   - **Your microphone** (your voice)
   - **System audio** (other participants in video calls)
3. You'll see two audio level meters showing activity

### During Recording

- **Transcript** tab shows live transcription as you speak
- Text appears within ~2 seconds of speaking
- **Mic:** prefix = your words
- **System:** prefix = other participants' words
- You can mute/unmute either source using the toggle buttons

### Stop Recording

1. Click **Stop Recording** button
2. The app will:
   - Finalize the transcript
   - Generate a summary (takes 30-60 seconds)
   - Save the meeting to your history

---

## Understanding the Interface

### Main Window

**Sidebar (Left)**
- **New Recording** - Start a new session
- **Meeting History** - List of past recordings
- Click any past meeting to view its transcript and summary

**Main Area (Right)**
- **Transcript** tab - Full conversation text
- **Summary** tab - AI-generated meeting notes with:
  - 📌 **Highlights** - Key discussion points
  - ✅ **Decisions** - Conclusions reached
  - 🎯 **Action Items** - Tasks and follow-ups

**Toolbar**
- **Tasks** icon - Shows active background tasks (model downloads, summary generation)
- **Settings** gear - Configure models and preferences

### Audio Controls

- **Mic Level** - Shows your microphone activity
- **System Level** - Shows system audio activity (other speakers)
- **Mute buttons** - Toggle either source on/off during recording

---

## Settings

### Transcription Settings

**Model Selection**
- **Managed Models** - Downloaded and managed by the app
- **Custom Model** - Use your own GGML Whisper model file
- Larger models = more accurate but slower

**Recommended Models:**
- **tiny** - Fastest, good for testing (75 MB)
- **base** - Good balance (142 MB) ⭐
- **small** - Better accuracy (466 MB) ⭐
- **medium/large** - Best accuracy but slow (1.5+ GB)

### Summary Settings

**Model Selection**
- **Local** - Llama model runs on your Mac (private, no internet)
- **Cloud** - Coming soon (OpenAI integration)

**Recommended Models:**
- **Llama-3.2-3B-Instruct** - Fast, good for short meetings (2 GB) ⭐
- **Llama-3.1-8B-Instruct** - Better quality (4.6 GB) ⭐

---

## Tips & Best Practices

### For Best Transcription Quality

✅ **Use a good microphone** - Built-in Mac mic works, but external is better
✅ **Reduce background noise** - Close windows, turn off fans
✅ **Speak clearly** - Normal pace, don't rush
✅ **Position mic properly** - 6-12 inches from your mouth
✅ **Test first** - Do a 30-second test recording to verify audio levels

### For System Audio Capture

✅ **Grant screen recording permission** - Required for system audio
✅ **Check audio levels** - System level meter should show activity when others speak
✅ **Use headphones** - Prevents echo/feedback
⚠️ **Note:** System audio only captures when using built-in audio output, not Bluetooth

### For Better Summaries

✅ **Longer meetings** - Summaries work best with 10+ minutes of content
✅ **Clear structure** - Meetings with clear topics/decisions get better summaries
✅ **Wait for completion** - Summary generation takes 30-60 seconds, be patient
✅ **Review and edit** - Summaries are AI-generated, review for accuracy

---

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| ⌘R | Start/Stop Recording |
| ⌘, | Open Settings |
| ⌘? | Open Help |
| ⌘⌥A | About Meetins Notes |

---

## Troubleshooting

### "Pick or download a Transcription model before starting"

**Solution:** You need to download a Whisper model first
1. Open Settings (⌘,)
2. Go to Transcription tab
3. Click "Download" next to a model (recommend: base or small)
4. Wait for download to complete
5. Try recording again

### No Microphone Audio

**Problem:** Mic level meter shows no activity

**Solutions:**
1. Check System Settings → Privacy & Security → Microphone
2. Ensure "Meetings Notes" is enabled
3. Restart the app
4. Try speaking louder or check your mic connection
5. Test mic in another app to verify it works

### No System Audio

**Problem:** System level meter shows no activity during video calls

**Solutions:**
1. Check System Settings → Privacy & Security → Screen Recording
2. Ensure "Meetings Notes" is enabled
3. Restart the app
4. **Important:** System audio only works with built-in audio output
5. Switch from Bluetooth headphones to Mac speakers/wired headphones
6. Test with YouTube video or Zoom test call

### Transcription is Slow

**Problem:** Text appears very slowly during recording

**Solutions:**
1. Switch to a smaller/faster model (tiny or base)
2. Close other apps to free up CPU/memory
3. Check CPU usage in Activity Monitor
4. Larger models (medium/large) are much slower

### Summary Generation Failed

**Problem:** Summary stays at "Generating..." or shows error

**Solutions:**
1. Ensure you have a Summary model downloaded
2. Check transcript has enough content (at least a few sentences)
3. Wait longer - 8B models take 30-60 seconds
4. Check available RAM (need ~8GB free for 8B models)
5. Try a smaller model (3B instead of 8B)

### App Won't Start Recording

**Problem:** Start button does nothing or shows error

**Solutions:**
1. Check both permissions granted (Mic + Screen Recording)
2. Ensure a Whisper model is selected in Settings
3. Restart the app
4. Check Console.app for error messages
5. Try removing and re-downloading models

---

## Understanding the Summary Format

### 📌 Highlights
Key points discussed in the meeting. These are the most important topics, ideas, or information shared.

**Example:**
- Discussed Q4 budget allocation
- Reviewed new product roadmap
- Client feedback on beta release

### ✅ Decisions
Conclusions or agreements reached during the meeting. What was decided?

**Example:**
- Approved $50K additional marketing budget
- Decided to delay feature X to next quarter
- Agreed on weekly standup time change to 10am

### 🎯 Action Items
Tasks, follow-ups, or next steps. Who needs to do what?

**Example:**
- John to send updated proposal by Friday
- Sarah to schedule client demo for next week
- Team to review design mockups before Monday

---

## Privacy & Data

### What's Stored Locally

✅ **Meeting transcripts** - Saved in app database
✅ **AI models** - Downloaded once, reused for all meetings
✅ **Meeting summaries** - Generated and saved locally
✅ **App settings** - Your preferences

### What's NOT Stored/Sent

❌ **No cloud upload** - Nothing leaves your Mac
❌ **No analytics** - We don't track you
❌ **No account** - No login, no registration
❌ **No internet required** - Works completely offline (after model download)

### Where Files Are Stored

- **Models:** `~/Library/Application Support/Meetings Notes/models/`
- **Meetings:** In-app database (SQLite)
- **Settings:** macOS UserDefaults

### Deleting Data

- **Delete individual meetings:** Right-click meeting in sidebar → Delete
- **Delete all data:** Remove app + `~/Library/Application Support/Meetings Notes/`

---

## System Requirements

**Minimum:**
- macOS 14.0 (Sonoma) or later
- Apple Silicon (M1/M2/M3) or Intel Mac
- 8 GB RAM (16 GB recommended)
- 10 GB free disk space (for models)

**Recommended:**
- macOS 15.0 (Sequoia)
- Apple Silicon Mac (M1 or newer)
- 16 GB RAM
- 20 GB free disk space

**Note:** Transcription and summarization are CPU/memory intensive. Performance is significantly better on Apple Silicon Macs.

---

## Getting Help

### In-App Support

- **Help Menu** → "Meetins Notes Help" - Opens this guide
- **Help Menu** → "Report an Issue" - Visit website for support
- **Help Menu** → "Privacy Policy" - View privacy details
- **Help Menu** → "Acknowledgments" - Open-source credits

### Website & Support

Visit: **https://meetingsnotes.app/**

For support, visit the website for:
- Contact information
- FAQs and documentation
- Issue reporting
- Latest updates

When reporting issues, please include:
- Your macOS version
- App version (0.5.0)
- Description of the issue
- Any error messages

---

## Credits

Meetins Notes is built with these amazing open-source projects:

- **whisper.cpp** - Fast speech recognition (Georgi Gerganov)
- **llama.cpp** - Local LLM inference (Georgi Gerganov)
- **OpenAI Whisper** - AI speech recognition model
- **Meta Llama** - AI language models

See **Help → Acknowledgments** for full credits and licenses.

---

**Developed by Anton Dudakov**
**© 2025 Anton Dudakov. All rights reserved.**

**Version 0.5.0**
