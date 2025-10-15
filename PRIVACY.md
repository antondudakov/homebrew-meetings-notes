# Privacy Policy for Meetins Notes

**Effective Date:** October 13, 2025
**Last Updated:** October 13, 2025

---

## Our Privacy Commitment

**Meetins Notes is designed with your privacy as the top priority.** We believe your meeting transcripts, recordings, and personal data should remain private and secure. That's why we built Meetins Notes to process everything locally on your Mac - no cloud uploads, no third-party servers, no data collection.

---

## What We DO

### 1. Local Processing Only

- **All transcription happens on your Mac** using whisper.cpp (OpenAI's Whisper model)
- **All summarization happens on your Mac** using llama.cpp (Meta's Llama models)
- **All data stays on your device** in your local file system at:
  ```
  ~/Library/Application Support/Meetins Notes/
  ```
- **No internet connection required** for core functionality (transcription and summarization)

### 2. Sandboxed Environment

- Meetins Notes runs in **macOS App Sandbox**, a security feature that restricts what the app can access
- The app can only access:
  - Files you explicitly select (via file picker)
  - Your microphone (with permission)
  - System audio via screen recording (with permission)
  - Its own container directory for storing data

### 3. Required Permissions

Meetins Notes requests only the permissions necessary for its core functionality:

| Permission | Purpose | When Requested |
|------------|---------|----------------|
| **Microphone Access** | Capture your voice for transcription | First time you start recording |
| **Screen Recording** | Capture system audio (Zoom, Teams, etc.) | First time you start recording |
| **File Access** | Save/load custom models and meeting data | When you import custom models or save meetings |

**You control these permissions** through macOS System Settings → Privacy & Security.

---

## What We DO NOT Do

### ❌ No Cloud Uploads

- Your transcripts **never leave your Mac**
- Your audio recordings **never leave your Mac**
- Your summaries **never leave your Mac**
- We do not sync anything to the cloud

### ❌ No Third-Party Services

- We do **not** send data to OpenAI (even though we use Whisper models)
- We do **not** send data to Meta (even though we use Llama models)
- We do **not** use any analytics services
- We do **not** integrate with advertising networks
- The only network connection is for **downloading models** from Hugging Face (optional, user-initiated)

### ❌ No Telemetry or Analytics

- We do **not** track how you use the app
- We do **not** collect crash reports automatically
- We do **not** know what meetings you record
- We do **not** know how often you use the app
- We do **not** collect any personally identifiable information (PII)

### ❌ No Cookies or Tracking

- Meetins Notes is a native macOS app - there are **no cookies**
- There is **no web-based tracking**
- There are **no tracking pixels or beacons**

### ❌ No Account Required

- You do **not** need to create an account
- You do **not** need to provide an email address
- You do **not** need to log in
- There is **no user authentication system**

---

## Data Storage

### What Gets Stored Locally

All data is stored in your macOS user directory:

```
~/Library/Application Support/Meetins Notes/
├── Meetings/              # Your transcripts and summaries (.json files)
├── Models/
│   ├── ggml/             # Whisper transcription models (.bin files)
│   └── summary-models/   # Llama summarization models (.gguf files)
└── Preferences/          # App settings (via UserDefaults)
```

### What's in Your Meeting Files

Each meeting is saved as a JSON file containing:
- **Transcript text** (what was said)
- **Summary** (highlights, decisions, action items)
- **Metadata:**
  - Meeting date and duration
  - Model names used for transcription/summarization
  - Audio source configuration (mic/system)

**What's NOT stored:**
- ❌ No raw audio files (audio is processed in real-time and discarded)
- ❌ No speaker identification or voice biometrics
- ❌ No video recordings
- ❌ No participant names (unless they're spoken and transcribed)

### Security-Scoped Bookmarks

When you select custom model files, macOS creates **security-scoped bookmarks** that allow Meetins Notes to access those files in future sessions. These bookmarks are:
- Stored in macOS system keychain (encrypted)
- Only accessible by Meetins Notes
- Revoked when you delete the app or the model file

---

## Network Activity

### When Meetins Notes Connects to the Internet

Meetins Notes **only** uses the internet in these specific scenarios:

1. **Model Downloads (Optional, User-Initiated)**
   - When you click "Download" on a model in Settings
   - Downloads from Hugging Face CDN (huggingface.co)
   - Connection details:
     - Protocol: HTTPS
     - Purpose: Download .bin or .gguf model files
     - Data sent: Standard HTTP headers (no personal data)
     - Data received: Model file + SHA256 checksum

2. **Future: App Updates (Coming Soon)**
   - Checking for new versions (opt-in only)
   - Downloaded from our servers or App Store

**No other network activity occurs.** We do not:
- Phone home with usage stats
- Check licenses or activation
- Communicate with analytics servers
- Connect to advertising networks

You can verify this using macOS network monitoring tools like:
- Little Snitch
- Wireshark
- Activity Monitor → Network tab

---

## Third-Party Code and Models

### Open-Source Components

Meetins Notes incorporates the following open-source software:

| Component | License | Purpose | Privacy Impact |
|-----------|---------|---------|----------------|
| [whisper.cpp](https://github.com/ggerganov/whisper.cpp) | MIT | Audio transcription | Runs locally, no data sent |
| [llama.cpp](https://github.com/ggerganov/llama.cpp) | MIT | Text summarization | Runs locally, no data sent |
| [WebRTC](https://webrtc.org) | BSD | Echo cancellation | Runs locally, no data sent |
| [MarkdownUI](https://github.com/gonzalezreal/swift-markdown-ui) | MIT | Markdown rendering | No external connections |

All of these libraries run **100% locally** on your Mac with no external communications.

### AI Models

The AI models used by Meetins Notes are:

1. **Whisper Models** (OpenAI)
   - Source: https://huggingface.co/ggerganov/whisper.cpp
   - License: MIT (models), Apache 2.0 (original Whisper)
   - Runs entirely offline after download

2. **Llama Models** (Meta)
   - Source: https://huggingface.co/models?library=gguf
   - License: Llama 3.2 Community License / Llama 3.1 Community License
   - Runs entirely offline after download

**Important:** Once downloaded, these models process your data **locally** and **never** send information back to OpenAI, Meta, or any other server.

---

## Your Data, Your Control

### How to View Your Data

All your data is in plain sight:
```bash
open ~/Library/Application\ Support/Meetins\ Notes/
```

Meeting files are **human-readable JSON**. You can:
- View them in any text editor
- Parse them with scripts
- Back them up manually
- Move them between Macs

### How to Export Your Data

Currently: Manually copy files from the directory above.

**Coming in v0.6:** Export to PDF, DOCX, Markdown, TXT formats.

### How to Delete Your Data

**To delete all app data:**
1. Quit Meetins Notes
2. Delete the folder:
   ```bash
   rm -rf ~/Library/Application\ Support/Meetins\ Notes/
   ```
3. (Optional) Revoke permissions in System Settings → Privacy & Security

**To delete the app:**
1. Drag Meetins Notes.app to Trash
2. Delete the data folder (above)
3. Permissions are automatically revoked

---

## Children's Privacy

Meetins Notes does not knowingly collect any information from children under 13 years of age. Because all processing is local and we collect no data, there is no data to associate with any user, including children.

If you are a parent or guardian and believe your child has used the app, rest assured that no data has been transmitted or collected.

---

## Future Features

### Pro Version and Cloud Features

We plan to offer **optional** paid features in the future:

1. **Pro Version (One-Time Purchase)**
   - Larger models (e.g., Whisper Large v3 Turbo)
   - Custom model support
   - Cloud API support (bring your own API keys for OpenAI, Anthropic, etc.)

   **Privacy impact:** If you choose to use third-party APIs with your own keys, your data will be sent to those providers according to their privacy policies. This will be:
   - **Opt-in only** (off by default)
   - **Clearly disclosed** before enabling
   - **User-controlled** (you manage your own API keys)

2. **Cloud Subscription (Future)**
   - Use our hosted models (no local processing required)
   - Requires account creation

   **Privacy impact:** With a cloud subscription, your data will be sent to our servers for processing. We will:
   - Encrypt data in transit (TLS 1.3)
   - Process data in memory only (no persistent storage)
   - Delete data immediately after processing
   - Provide a detailed privacy policy before launch

**Current version (0.5.0) has NO cloud features.** Everything is local and private.

---

## Changes to This Privacy Policy

We may update this Privacy Policy from time to time. We will notify you of any changes by:
- Updating the "Last Updated" date at the top
- Posting a notice in the app (for material changes)
- Releasing a new version with changelog notes

You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted.

---

## App Store Privacy Labels

When Meetins Notes is available on the Mac App Store, it will display the following privacy labels:

### Data Not Collected

The following data is **NOT collected** by Meetins Notes:
- ✅ Contact Information (email, name, etc.)
- ✅ Health & Fitness
- ✅ Financial Information
- ✅ Location
- ✅ Sensitive Information
- ✅ Contacts
- ✅ User Content (transcripts, notes, etc.)
- ✅ Browsing History
- ✅ Search History
- ✅ Identifiers (device ID, advertising ID, etc.)
- ✅ Purchases
- ✅ Usage Data
- ✅ Diagnostics
- ✅ Other Data

### Data Used to Track You

**None.** Meetins Notes does not track you across apps or websites.

---

## Contact Us

If you have any questions about this Privacy Policy, please contact us:

- **Author:** Anton Dudakov
- **Contact:** https://meetingsnotes.app
- **GitHub Issues:** https://github.com/[your-username]/meetins-notes/issues
- **Website:** htps://meetingsnotes.app

---

## Legal Basis (GDPR Compliance)

For users in the European Economic Area (EEA), we rely on the following legal basis for processing personal data:

**We do not process personal data.** Meetins Notes operates entirely locally on your device. Under GDPR definitions, data that never leaves your device and is not transmitted to any controller is not subject to GDPR obligations for the app developer.

However, if you choose to use third-party APIs (optional Pro feature, coming soon), those providers will process your data according to their own privacy policies and GDPR obligations.

---

## California Privacy Rights (CCPA)

For California residents:

Under the California Consumer Privacy Act (CCPA), you have certain rights regarding your personal information. However:

**We do not collect personal information.** Because Meetins Notes processes all data locally on your device and does not transmit any data to us, there is no personal information for us to collect, sell, or share.

If we introduce cloud features in the future, we will update this policy with CCPA-specific rights and procedures.

---

## Transparency Report

### Data Requests Received: **0**

We have never received any requests for user data from:
- Government agencies
- Law enforcement
- Third parties
- Civil litigants

This is because **we have no user data to provide.** Everything stays on your Mac.

### Vulnerabilities and Security

As of October 13, 2025:
- No known security vulnerabilities
- No data breaches (because there's no data to breach)
- No unauthorized access incidents

If you discover a security issue, please report it to [security email] before public disclosure.

---

## Summary: Privacy in Plain Language

**Simple version:**

1. ✅ Your data stays on your Mac
2. ✅ We can't see your transcripts or recordings
3. ✅ No cloud uploads
4. ✅ No tracking or analytics
5. ✅ No account required
6. ✅ Works completely offline (after downloading models)
7. ✅ You can delete everything by deleting a folder

**Bottom line:** If you're looking for a truly private meeting transcription app, Meetins Notes is designed for you.

---

**Version:** 0.5.0 (Beta)
**Last Updated:** October 13, 2025
**Effective Date:** October 13, 2025

**Copyright © 2025 Anton Dudakov. All rights reserved.**
