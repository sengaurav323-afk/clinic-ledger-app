# First-time setup

This app needs a free Firebase project connected before anyone can sign in
or save data. About 10 minutes, one-time.

## 1. Create a Firebase project
1. Go to https://console.firebase.google.com
2. **Add project** → name it (e.g. "clinic-ledger") → finish the wizard
   (Google Analytics is optional, can skip it).

## 2. Turn on sign-in methods
1. Left sidebar → **Build → Authentication** → **Get started**.
2. Under **Sign-in method**, enable:
   - **Email/Password**
   - **Phone**
3. For Phone sign-in to work on a live site, add your site's domain under
   **Authentication → Settings → Authorized domains** once you know it
   (e.g. `clinic-ledger.web.app`). `localhost` is already allowed for testing.

> Note: Phone (SMS) sign-in requires your Firebase project to be on the
> **Blaze (pay-as-you-go)** plan, though Firebase's free monthly quota
> covers light use. Email/Password works entirely on the free Spark plan
> if you'd rather skip that step.

## 3. Turn on Firestore (the database)
1. Left sidebar → **Build → Firestore Database** → **Create database**.
2. Pick a region close to you, start in **production mode**.
3. Go to the **Rules** tab and paste in the contents of this project's
   `firestore.rules` file, then **Publish**.
   This ensures each signed-in user can only see and edit their own
   entries — never anyone else's.

## 4. Get your web app config
1. Gear icon → **Project settings**.
2. Under **Your apps**, click **</>** to register a new web app (any nickname).
3. Copy the `firebaseConfig` object shown, e.g.:
```js
   const firebaseConfig = {
     apiKey: "AIza...",
     authDomain: "clinic-ledger.firebaseapp.com",
     projectId: "clinic-ledger",
     storageBucket: "clinic-ledger.appspot.com",
     messagingSenderId: "...",
     appId: "..."
   };
```

## 5. Paste it into the app
Open `index.html`, find the `PASTE YOUR FIREBASE CONFIG HERE` section near
the bottom, and replace the placeholder values with your real ones. Save.

## 6. Deploy so it's a real public link

**Option A — Firebase Hosting (recommended, pairs naturally with Auth/Firestore):**
```bash
npm install -g firebase-tools
firebase login
firebase init hosting   # choose your project, "." as public directory
firebase deploy
```
You'll get a URL like `https://clinic-ledger.web.app`.

**Option B — any static host** (Netlify, Vercel, GitHub Pages): just upload
or connect the repo — `index.html` is fully self-contained and needs no
build step.

## 7. Try it
Open your live URL, create an account with your own email or phone number,
and add a test entry. Open the same URL in a private/incognito window and
sign up with a different email — you should see an empty ledger there,
confirming each account's data stays separate.

## Troubleshooting
- **"Could not save"** — usually means Firestore rules aren't published yet,
  or the signed-in user's `uid` doesn't match `userId` on the entry (shouldn't
  happen unless the rules or code were edited).
- **Phone OTP never arrives** — check the number includes the country code
  (e.g. `+91...`), and that your project is on the Blaze plan if this is a
  live (non-test) number.
- **reCAPTCHA doesn't show** — make sure you're testing on `localhost` or an
  authorized domain (see step 2.3).
