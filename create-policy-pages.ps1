$dir = Get-Location
Write-Output "Creating policy pages in: $dir"
Write-Output ""
$content_terms = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Terms and Conditions — Clinic Ledger</title>
<style>
    :root {
      --navy: #0d1b3d;
      --navy-light: #16285a;
      --blue: #2E5BFF;
      --text: #1a1a2e;
      --muted: #5a6072;
      --bg: #f7f8fb;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }
    header {
      background: var(--navy);
      padding: 18px 32px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    header .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    header .brand img {
      height: 30px;
      width: auto;
    }
    header .brand span {
      color: #fff;
      font-weight: 700;
      font-size: 1.1rem;
      font-family: Georgia, ''Times New Roman'', serif;
    }
    header a.back {
      color: #cfd6f5;
      text-decoration: none;
      font-size: 0.9rem;
    }
    header a.back:hover { color: #fff; }
    main {
      max-width: 760px;
      margin: 0 auto;
      padding: 48px 24px 80px;
    }
    h1 {
      font-size: 1.8rem;
      margin-bottom: 4px;
      color: var(--navy);
    }
    .updated {
      color: var(--muted);
      font-size: 0.85rem;
      margin-bottom: 32px;
    }
    h2 {
      font-size: 1.15rem;
      color: var(--navy);
      margin-top: 32px;
      margin-bottom: 8px;
    }
    p, li { color: var(--text); font-size: 0.97rem; }
    ul { padding-left: 20px; }
    .placeholder {
      background: #fff3cd;
      border: 1px solid #f0c040;
      padding: 1px 6px;
      border-radius: 4px;
      font-style: normal;
    }
    footer {
      text-align: center;
      padding: 24px;
      color: var(--muted);
      font-size: 0.85rem;
    }
    footer a { color: var(--blue); text-decoration: none; margin: 0 8px; }
</style>
</head>
<body>
<header>
  <div class="brand">
    <img src="logo.png" alt="Clinic Ledger logo">
    <span>Clinic Ledger</span>
  </div>
  <a class="back" href="index.html">&larr; Back to Clinic Ledger</a>
</header>
<main>
<h1>Terms and Conditions</h1>
<div class="updated">Last updated: 17 September 2026</div>

<p>These Terms and Conditions ("Terms") govern your access to and use of Clinic Ledger (the "Service"), a patient payment management application. By creating an account or using the Service, you agree to these Terms.</p>

<h2>1. Eligibility and Account</h2>
<p>You must be at least 18 years old and legally authorised to run or administer the clinic on whose behalf you use the Service. You are responsible for maintaining the confidentiality of your login credentials and for all activity under your account.</p>

<h2>2. Use of the Service</h2>
<p>Clinic Ledger is provided to help clinics record, track, and report patient payments. You agree to use the Service only for lawful purposes and not to misuse, reverse-engineer, or attempt to gain unauthorised access to the Service or its underlying systems.</p>

<h2>3. Subscription and Billing</h2>
<p>Clinic Ledger offers a free trial period followed by paid Monthly and Yearly subscription plans, at the prices displayed in the app at the time of purchase. Subscriptions renew automatically at the end of each billing period unless cancelled before the renewal date. Payments are processed securely through Razorpay; Clinic Ledger does not store your card details.</p>

<h2>4. Responsibility for Patient Data</h2>
<p>You are solely responsible for the accuracy, legality, and appropriateness of any patient or clinic data you enter into the Service, and for obtaining any consents required under applicable law before recording such data.</p>

<h2>5. Intellectual Property</h2>
<p>The Service, including its design, code, and branding, is the property of Clinic Ledger and its licensors. You retain ownership of the data you enter into the Service.</p>

<h2>6. Limitation of Liability</h2>
<p>The Service is provided "as is". To the maximum extent permitted by law, Clinic Ledger shall not be liable for any indirect, incidental, or consequential damages arising from your use of, or inability to use, the Service.</p>

<h2>7. Termination</h2>
<p>You may stop using the Service and cancel your subscription at any time from Settings. We may suspend or terminate accounts that violate these Terms.</p>

<h2>8. Governing Law</h2>
<p>These Terms are governed by the laws of India. Any disputes shall be subject to the exclusive jurisdiction of the courts of <span class="placeholder">[Your City, State]</span>.</p>

<h2>9. Changes to These Terms</h2>
<p>We may update these Terms from time to time. Continued use of the Service after changes take effect constitutes acceptance of the revised Terms.</p>

<h2>10. Contact</h2>
<p>Questions about these Terms can be sent to <span class="placeholder">[your-support-email@example.com]</span>.</p>

</main>
<footer>
  <a href="terms.html">Terms &amp; Conditions</a>|
  <a href="privacy.html">Privacy Policy</a>|
  <a href="shipping.html">Shipping Policy</a>|
  <a href="refunds.html">Cancellation &amp; Refunds</a>|
  <a href="contact.html">Contact Us</a>
  <div style="margin-top:8px;">&copy; 2026 Clinic Ledger. All rights reserved.</div>
</footer>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$dir\terms.html", $content_terms)
Write-Output "Created terms.html"
$content_privacy = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Privacy Policy — Clinic Ledger</title>
<style>
    :root {
      --navy: #0d1b3d;
      --navy-light: #16285a;
      --blue: #2E5BFF;
      --text: #1a1a2e;
      --muted: #5a6072;
      --bg: #f7f8fb;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }
    header {
      background: var(--navy);
      padding: 18px 32px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    header .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    header .brand img {
      height: 30px;
      width: auto;
    }
    header .brand span {
      color: #fff;
      font-weight: 700;
      font-size: 1.1rem;
      font-family: Georgia, ''Times New Roman'', serif;
    }
    header a.back {
      color: #cfd6f5;
      text-decoration: none;
      font-size: 0.9rem;
    }
    header a.back:hover { color: #fff; }
    main {
      max-width: 760px;
      margin: 0 auto;
      padding: 48px 24px 80px;
    }
    h1 {
      font-size: 1.8rem;
      margin-bottom: 4px;
      color: var(--navy);
    }
    .updated {
      color: var(--muted);
      font-size: 0.85rem;
      margin-bottom: 32px;
    }
    h2 {
      font-size: 1.15rem;
      color: var(--navy);
      margin-top: 32px;
      margin-bottom: 8px;
    }
    p, li { color: var(--text); font-size: 0.97rem; }
    ul { padding-left: 20px; }
    .placeholder {
      background: #fff3cd;
      border: 1px solid #f0c040;
      padding: 1px 6px;
      border-radius: 4px;
      font-style: normal;
    }
    footer {
      text-align: center;
      padding: 24px;
      color: var(--muted);
      font-size: 0.85rem;
    }
    footer a { color: var(--blue); text-decoration: none; margin: 0 8px; }
</style>
</head>
<body>
<header>
  <div class="brand">
    <img src="logo.png" alt="Clinic Ledger logo">
    <span>Clinic Ledger</span>
  </div>
  <a class="back" href="index.html">&larr; Back to Clinic Ledger</a>
</header>
<main>
<h1>Privacy Policy</h1>
<div class="updated">Last updated: 17 September 2026</div>

<p>This Privacy Policy explains how Clinic Ledger collects, uses, and protects information when you use the Service.</p>

<h2>1. Information We Collect</h2>
<ul>
  <li><strong>Account information:</strong> name, email, mobile number, city, and password (securely handled by Firebase Authentication).</li>
  <li><strong>Clinic and patient records you enter:</strong> patient name, fee type, amount, payment status, and related notes, entered by you or your staff.</li>
  <li><strong>Profile photo</strong>, if you choose to upload one (stored via Cloudinary).</li>
  <li><strong>Payment information:</strong> subscription plan and payment status. Card and bank details are handled directly by Razorpay and are never stored by Clinic Ledger.</li>
</ul>

<h2>2. How We Use Your Information</h2>
<p>We use collected information to operate and improve the Service, process your subscription payments, communicate with you about your account, and maintain the security of the platform.</p>

<h2>3. Where Your Data Is Stored</h2>
<p>Account and clinic data is stored using Google Firebase (Firestore and Authentication). Profile photos are stored via Cloudinary. These providers maintain their own security and infrastructure standards.</p>

<h2>4. Third-Party Services</h2>
<ul>
  <li><strong>Firebase (Google):</strong> authentication, database, and hosting.</li>
  <li><strong>Cloudinary:</strong> profile photo storage.</li>
  <li><strong>Razorpay:</strong> payment processing for subscriptions.</li>
  <li><strong>Cloudflare:</strong> secure server-side processing of subscription payments.</li>
</ul>
<p>We do not sell your personal information to third parties.</p>

<h2>5. Your Rights</h2>
<p>You can export your data or request account deletion at any time from Settings &rarr; Data &amp; Privacy. You may also contact us directly to request access to, correction of, or deletion of your information.</p>

<h2>6. Data Retention</h2>
<p>We retain your account and clinic data for as long as your account is active, or as needed to comply with legal obligations, after which it may be deleted upon request.</p>

<h2>7. Children''s Privacy</h2>
<p>The Service is intended for use by clinic administrators and staff who are adults. It is not directed at children, and we do not knowingly collect personal information from children.</p>

<h2>8. Changes to This Policy</h2>
<p>We may update this Privacy Policy from time to time. Material changes will be reflected by updating the "Last updated" date above.</p>

<h2>9. Contact</h2>
<p>For privacy-related questions, contact <span class="placeholder">[your-support-email@example.com]</span>.</p>

</main>
<footer>
  <a href="terms.html">Terms &amp; Conditions</a>|
  <a href="privacy.html">Privacy Policy</a>|
  <a href="shipping.html">Shipping Policy</a>|
  <a href="refunds.html">Cancellation &amp; Refunds</a>|
  <a href="contact.html">Contact Us</a>
  <div style="margin-top:8px;">&copy; 2026 Clinic Ledger. All rights reserved.</div>
</footer>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$dir\privacy.html", $content_privacy)
Write-Output "Created privacy.html"
$content_shipping = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shipping Policy — Clinic Ledger</title>
<style>
    :root {
      --navy: #0d1b3d;
      --navy-light: #16285a;
      --blue: #2E5BFF;
      --text: #1a1a2e;
      --muted: #5a6072;
      --bg: #f7f8fb;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }
    header {
      background: var(--navy);
      padding: 18px 32px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    header .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    header .brand img {
      height: 30px;
      width: auto;
    }
    header .brand span {
      color: #fff;
      font-weight: 700;
      font-size: 1.1rem;
      font-family: Georgia, ''Times New Roman'', serif;
    }
    header a.back {
      color: #cfd6f5;
      text-decoration: none;
      font-size: 0.9rem;
    }
    header a.back:hover { color: #fff; }
    main {
      max-width: 760px;
      margin: 0 auto;
      padding: 48px 24px 80px;
    }
    h1 {
      font-size: 1.8rem;
      margin-bottom: 4px;
      color: var(--navy);
    }
    .updated {
      color: var(--muted);
      font-size: 0.85rem;
      margin-bottom: 32px;
    }
    h2 {
      font-size: 1.15rem;
      color: var(--navy);
      margin-top: 32px;
      margin-bottom: 8px;
    }
    p, li { color: var(--text); font-size: 0.97rem; }
    ul { padding-left: 20px; }
    .placeholder {
      background: #fff3cd;
      border: 1px solid #f0c040;
      padding: 1px 6px;
      border-radius: 4px;
      font-style: normal;
    }
    footer {
      text-align: center;
      padding: 24px;
      color: var(--muted);
      font-size: 0.85rem;
    }
    footer a { color: var(--blue); text-decoration: none; margin: 0 8px; }
</style>
</head>
<body>
<header>
  <div class="brand">
    <img src="logo.png" alt="Clinic Ledger logo">
    <span>Clinic Ledger</span>
  </div>
  <a class="back" href="index.html">&larr; Back to Clinic Ledger</a>
</header>
<main>
<h1>Shipping Policy</h1>
<div class="updated">Last updated: 17 September 2026</div>

<p>Clinic Ledger is a digital software-as-a-service (SaaS) product. No physical goods are shipped as part of this Service.</p>

<h2>1. Nature of Delivery</h2>
<p>Access to Clinic Ledger is delivered entirely electronically. Upon successful sign-up, your free trial begins immediately. Upon successful subscription payment, your plan is upgraded automatically, typically within a few seconds of payment confirmation.</p>

<h2>2. No Shipping Charges</h2>
<p>Since no physical products are involved, no shipping fees apply to any plan or purchase made through Clinic Ledger.</p>

<h2>3. Delayed Access</h2>
<p>In the rare event that your account is not upgraded shortly after a successful payment, please contact us at <span class="placeholder">[your-support-email@example.com]</span> with your payment reference so we can resolve it promptly.</p>

</main>
<footer>
  <a href="terms.html">Terms &amp; Conditions</a>|
  <a href="privacy.html">Privacy Policy</a>|
  <a href="shipping.html">Shipping Policy</a>|
  <a href="refunds.html">Cancellation &amp; Refunds</a>|
  <a href="contact.html">Contact Us</a>
  <div style="margin-top:8px;">&copy; 2026 Clinic Ledger. All rights reserved.</div>
</footer>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$dir\shipping.html", $content_shipping)
Write-Output "Created shipping.html"
$content_contact = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us — Clinic Ledger</title>
<style>
    :root {
      --navy: #0d1b3d;
      --navy-light: #16285a;
      --blue: #2E5BFF;
      --text: #1a1a2e;
      --muted: #5a6072;
      --bg: #f7f8fb;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }
    header {
      background: var(--navy);
      padding: 18px 32px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    header .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    header .brand img {
      height: 30px;
      width: auto;
    }
    header .brand span {
      color: #fff;
      font-weight: 700;
      font-size: 1.1rem;
      font-family: Georgia, ''Times New Roman'', serif;
    }
    header a.back {
      color: #cfd6f5;
      text-decoration: none;
      font-size: 0.9rem;
    }
    header a.back:hover { color: #fff; }
    main {
      max-width: 760px;
      margin: 0 auto;
      padding: 48px 24px 80px;
    }
    h1 {
      font-size: 1.8rem;
      margin-bottom: 4px;
      color: var(--navy);
    }
    .updated {
      color: var(--muted);
      font-size: 0.85rem;
      margin-bottom: 32px;
    }
    h2 {
      font-size: 1.15rem;
      color: var(--navy);
      margin-top: 32px;
      margin-bottom: 8px;
    }
    p, li { color: var(--text); font-size: 0.97rem; }
    ul { padding-left: 20px; }
    .placeholder {
      background: #fff3cd;
      border: 1px solid #f0c040;
      padding: 1px 6px;
      border-radius: 4px;
      font-style: normal;
    }
    footer {
      text-align: center;
      padding: 24px;
      color: var(--muted);
      font-size: 0.85rem;
    }
    footer a { color: var(--blue); text-decoration: none; margin: 0 8px; }
</style>
</head>
<body>
<header>
  <div class="brand">
    <img src="logo.png" alt="Clinic Ledger logo">
    <span>Clinic Ledger</span>
  </div>
  <a class="back" href="index.html">&larr; Back to Clinic Ledger</a>
</header>
<main>
<h1>Contact Us</h1>
<div class="updated">Last updated: 17 September 2026</div>

<p>We''re happy to help with any questions about your account, subscription, or the Service in general.</p>

<h2>Business Name</h2>
<p><span class="placeholder">[Your Clinic / Business Legal Name]</span></p>

<h2>Support Email</h2>
<p><span class="placeholder">[your-support-email@example.com]</span></p>

<h2>Support Phone</h2>
<p><span class="placeholder">[Your Support Phone Number]</span></p>

<h2>Registered Address</h2>
<p><span class="placeholder">[Your Registered Business Address, City, State, PIN Code]</span></p>

<h2>Response Time</h2>
<p>We aim to respond to all queries within <span class="placeholder">[e.g., 2 business days]</span>.</p>

</main>
<footer>
  <a href="terms.html">Terms &amp; Conditions</a>|
  <a href="privacy.html">Privacy Policy</a>|
  <a href="shipping.html">Shipping Policy</a>|
  <a href="refunds.html">Cancellation &amp; Refunds</a>|
  <a href="contact.html">Contact Us</a>
  <div style="margin-top:8px;">&copy; 2026 Clinic Ledger. All rights reserved.</div>
</footer>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$dir\contact.html", $content_contact)
Write-Output "Created contact.html"
$content_refunds = @'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cancellation and Refunds — Clinic Ledger</title>
<style>
    :root {
      --navy: #0d1b3d;
      --navy-light: #16285a;
      --blue: #2E5BFF;
      --text: #1a1a2e;
      --muted: #5a6072;
      --bg: #f7f8fb;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
    }
    header {
      background: var(--navy);
      padding: 18px 32px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    header .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    header .brand img {
      height: 30px;
      width: auto;
    }
    header .brand span {
      color: #fff;
      font-weight: 700;
      font-size: 1.1rem;
      font-family: Georgia, ''Times New Roman'', serif;
    }
    header a.back {
      color: #cfd6f5;
      text-decoration: none;
      font-size: 0.9rem;
    }
    header a.back:hover { color: #fff; }
    main {
      max-width: 760px;
      margin: 0 auto;
      padding: 48px 24px 80px;
    }
    h1 {
      font-size: 1.8rem;
      margin-bottom: 4px;
      color: var(--navy);
    }
    .updated {
      color: var(--muted);
      font-size: 0.85rem;
      margin-bottom: 32px;
    }
    h2 {
      font-size: 1.15rem;
      color: var(--navy);
      margin-top: 32px;
      margin-bottom: 8px;
    }
    p, li { color: var(--text); font-size: 0.97rem; }
    ul { padding-left: 20px; }
    .placeholder {
      background: #fff3cd;
      border: 1px solid #f0c040;
      padding: 1px 6px;
      border-radius: 4px;
      font-style: normal;
    }
    footer {
      text-align: center;
      padding: 24px;
      color: var(--muted);
      font-size: 0.85rem;
    }
    footer a { color: var(--blue); text-decoration: none; margin: 0 8px; }
</style>
</head>
<body>
<header>
  <div class="brand">
    <img src="logo.png" alt="Clinic Ledger logo">
    <span>Clinic Ledger</span>
  </div>
  <a class="back" href="index.html">&larr; Back to Clinic Ledger</a>
</header>
<main>
<h1>Cancellation and Refunds</h1>
<div class="updated">Last updated: 17 September 2026</div>

<h2>1. Free Trial</h2>
<p>New accounts begin with a free trial period. You may cancel at any time during the trial with no charge.</p>

<h2>2. Cancelling Your Subscription</h2>
<p>You can cancel your Monthly or Yearly subscription at any time from Settings &rarr; Subscription. Cancellation stops future renewals; your current paid period remains active until its end date, after which your plan will not renew.</p>

<h2>3. Refund Eligibility</h2>
<p>We offer refunds in the following cases:</p>
<ul>
  <li>You were charged more than once for the same billing period (duplicate charge).</li>
  <li>A technical failure on our end prevented you from accessing the Service you paid for.</li>
  <li>You request a refund within <span class="placeholder">[e.g., 7 days]</span> of your first-ever paid subscription charge.</li>
</ul>
<p>Refunds are generally not provided for partial use of a billing period after this window, or for change-of-mind cancellations once the paid period has substantially elapsed.</p>

<h2>4. How to Request a Refund</h2>
<p>Contact <span class="placeholder">[your-support-email@example.com]</span> with your registered email and the Razorpay payment ID (visible in your payment confirmation). We will review and respond within <span class="placeholder">[e.g., 3 business days]</span>.</p>

<h2>5. Refund Processing Time</h2>
<p>Approved refunds are processed via Razorpay back to your original payment method and typically reflect within 5-7 business days, depending on your bank or card issuer.</p>

</main>
<footer>
  <a href="terms.html">Terms &amp; Conditions</a>|
  <a href="privacy.html">Privacy Policy</a>|
  <a href="shipping.html">Shipping Policy</a>|
  <a href="refunds.html">Cancellation &amp; Refunds</a>|
  <a href="contact.html">Contact Us</a>
  <div style="margin-top:8px;">&copy; 2026 Clinic Ledger. All rights reserved.</div>
</footer>
</body>
</html>
'@
[System.IO.File]::WriteAllText("$dir\refunds.html", $content_refunds)
Write-Output "Created refunds.html"
Write-Output ""
Write-Output "All 5 policy pages created. Remember to fill in the [bracketed placeholders] in contact.html, terms.html, privacy.html, shipping.html, and refunds.html before this goes live."
