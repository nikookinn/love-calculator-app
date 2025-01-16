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


![Screenshot 2025-01-16 152108](https://github.com/user-attachments/assets/ee386836-4bbd-47ff-b87e-e3328323ff26)
![Screenshot 2025-01-16 152748](https://github.com/user-attachments/assets/a95fc755-3ca8-4cf0-8820-32e984675601)
![Screenshot 2025-01-16 152939](https://github.com/user-attachments/assets/dd24879b-dfeb-4068-b64c-3ddb5b243af0)
![Screenshot 2025-01-16 153151](https://github.com/user-attachments/assets/4ac6b2fd-a5e6-46f3-be84-c41545a18d39)
![Screenshot 2025-01-16 153300](https://github.com/user-attachments/assets/9b72322f-0d4c-43ba-b4f1-ae74bc5018ab)
![Screenshot 2025-01-16 153209](https://github.com/user-attachments/assets/a5d219c1-174e-4d63-a766-7120fc5949b5)




![twilio_sms](https://github.com/user-attachments/assets/bccd223d-7227-4757-9d8f-c21626a2f20a)
![gmail_email](https://github.com/user-attachments/assets/4b7a4bdc-cf6a-415a-b8f4-b6ca33f746da)

