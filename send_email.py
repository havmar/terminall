import smtplib
from email.mime.text import MIMEText

SENDER = "martonhavasreti@gmail.com"
RECIPIENT = "martonhavasreti@gmail.com"

msg = MIMEText("This is a dummy test email sent from a Python script using Gmail SMTP.")
msg["Subject"] = "Test Email from Python"
msg["From"] = SENDER
msg["To"] = RECIPIENT

app_password = input("Enter your Gmail App Password: ").strip()

try:
    with smtplib.SMTP_SSL("smtp.gmail.com", 465) as server:
        server.login(SENDER, app_password)
        server.sendmail(SENDER, RECIPIENT, msg.as_string())
    print("Email sent successfully!")
except Exception as e:
    print(f"Failed to send email: {e}")
