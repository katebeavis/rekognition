# rekognition :camera:

Playing around with AWS Rekognition, currently you can get a list of labels (human, mobile phone, etc) and the 'confidence' percentage of that label's existence

## To setup

``bundle install``

Add a .env file with your AWS credentials:

``AWS_REGION=YOUR_REGION``

``AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY``

``AWS_SECRET_ACCESS_KEY=YOUR_SECRET_ACCESS_KEY``

Read more about it here:

https://aws.amazon.com/rekognition/pricing/

And you're ready to go!

## To run

With an example image:

``ruby lib/detect.rb example_images/the_count.jpeg``

``ruby lib/detect.rb example_images/kate.jpeg``

Or with your own:

``ruby lib/detect.rb [PATH TO YOUR FILE]``
