# Love Calculator

Love Calculator is a small Spring MVC project designed to calculate the relationship status between two individuals based on their names. Users can share the results via SMS or email.

## Features
- Accepts two names (Your name and Crush's name) to calculate the relationship status.
- Predicts relationship outcomes (e.g., Friend, Lover).
- Sends results via:
  - **SMS** using Twilio API.
  - **Email** using Gmail SMTP.
- Simple and interactive interface designed with JSP and Bootstrap.

## Technologies and Libraries Used
- **Java**: Core programming language.
- **Spring MVC**: Framework for building web applications.
- **JSP**: Used for creating dynamic web pages.
- **Bootstrap**: For responsive and clean UI design.
- **Twilio API**: Used for SMS functionality.
- **JavaMail API**: For sending email notifications via Gmail.
- **Hibernate Validator**: Used for input validation.

## How to Set Up Locally

### Prerequisites
1. **Twilio Account**:
   - Sign up for a [Twilio account](https://www.twilio.com/).
   - Obtain the following credentials from your Twilio dashboard:
     - `ACCOUNT_SID`
     - `AUTH_TOKEN`
     - `TWILIO_PHONE` (Your Twilio phone number)
   - Add these details to your `services-info.properties` file.

2. **Gmail Account**:
   - Ensure that two-factor authentication is enabled on your Gmail account.
   - Generate an **App Password** by following the steps outlined [here](https://support.google.com/accounts/answer/185833).
   - Use this app password and your Gmail address for email functionality.

3. **Disable Antivirus Email Protection**:
   - Some antivirus software may block email-sending features. Temporarily disable email protection if you face issues.

### Configuration
1. Create a `services-info.properties` file in the `src/main/resources` directory:
   ```properties
   # Twilio Configuration
   twilio.account.sid=YOUR_TWILIO_ACCOUNT_SID
   twilio.auth.token=YOUR_TWILIO_AUTH_TOKEN
   twilio.phone=YOUR_TWILIO_PHONE_NUMBER

   # Email Configuration
   sender.email=YOUR_GMAIL_ADDRESS
   email.app.password=YOUR_GMAIL_APP_PASSWORD

Steps to Run
git clone https://github.com/nikookinn/love-calculator.git
cd love-calculator

Install dependencies and build the project:
mvn clean install

Run the application:
mvn spring-boot:run

Access the Application
Open your browser and navigate to:
http://localhost:8080


![Screenshot 2025-01-16 152108](https://github.com/user-attachments/assets/1028dd0c-a8a8-47b2-b91f-acd8ee2add2a)
![Screenshot 2025-01-16 152748](https://github.com/user-attachments/assets/7a1523fb-89c7-4b3c-aca9-4eed42ed23a3)
![Screenshot 2025-01-16 153151](https://github.com/user-attachments/assets/9426bd53-5c7b-4018-8785-fcdd8604d3ba)
![Screenshot 2025-01-16 152939](https://github.com/user-attachments/assets/a3810442-5499-45f1-b035-a6baa82fe80c)
![Screenshot 2025-01-16 153300](https://github.com/user-attachments/assets/2d4cb705-03e0-4268-b6ac-13102f635a52)
![Screenshot 2025-01-16 153209](https://github.com/user-attachments/assets/f02b9a13-88ef-4169-adb7-151f11aa3c79)
![twilio_sms](https://github.com/user-attachments/assets/aafbe1a8-a010-473c-af31-94277376f851)
![gmail_email](https://github.com/user-attachments/assets/366db4bd-e036-437a-b8fd-8ccf021c9021)
