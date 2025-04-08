To set custom variables in Twilio SendGrid using the PHP SDK so that they appear in webhooks, you need to use the `custom_args` feature. This allows you to attach custom data to your email, which will then be included in the webhook payload when the event occurs (e.g., email opened, clicked, etc.).

Here's a step-by-step guide on how to achieve this:

1. **Install the SendGrid PHP SDK**: If you haven't already installed the SendGrid PHP SDK, you can do so using Composer:

   ```bash
   composer require sendgrid/sendgrid
   ```

2. **Set Up Your SendGrid Client**: Initialize the SendGrid client with your API key.

   ```php
   require 'vendor/autoload.php'; // If you're using Composer (recommended)

   $apiKey = 'YOUR_SENDGRID_API_KEY';
   $sendgrid = new \SendGrid($apiKey);
   ```

3. **Create an Email with Custom Args**: When creating your email, you can add custom arguments using the `addCustomArg` method. These arguments will be included in the webhook payload.

   ```php
   $email = new \SendGrid\Mail\Mail();
   $email->setFrom("from@example.com", "Example Sender");
   $email->setSubject("Sending with SendGrid is Fun");
   $email->addTo("to@example.com", "Example Recipient");
   $email->addContent("text/plain", "and easy to do anywhere, even with PHP");
   $email->addContent(
       "text/html", "<strong>and easy to do anywhere, even with PHP</strong>"
   );

   // Add custom arguments
   $email->addCustomArg("user_id", "12345");
   $email->addCustomArg("campaign", "welcome_series");

   try {
       $response = $sendgrid->send($email);
       echo $response->statusCode();
       print_r($response->headers());
       echo $response->body();
   } catch (Exception $e) {
       echo 'Caught exception: '. $e->getMessage() ."\n";
   }
   ```

4. **Configure Webhooks**: Ensure that your SendGrid account is set up to send event webhooks. You can configure this in the SendGrid dashboard under Settings > Mail Settings > Event Webhook.

5. **Receive and Parse Webhooks**: Your endpoint that receives the webhooks will need to parse the incoming JSON payload. The custom arguments will be included in the payload under the `custom_args` field.

   Example payload snippet:

   ```json
   {
     "email": "to@example.com",
     "timestamp": 1609459200,
     "event": "delivered",
     "custom_args": {
       "user_id": "12345",
       "campaign": "welcome_series"
     }
   }
   ```

By following these steps, you can successfully include custom variables in your SendGrid emails and have them appear in the webhook payloads. This is particularly useful for tracking and analytics purposes.