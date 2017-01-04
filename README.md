# rekognition

Playing around with AWS Rekognition, currently you can get a list of labels (human, mobile phone, etc) and the 'confidence' percentage of that label's existence

## To run

``bundle install``

With an example image:

``ruby lib/detect.rb example_images/the_count.jpeg``

``ruby lib/detect.rb example_images/kate.jpeg``

Or with your own:

``ruby lib/detect.rb [PATH TO YOUR FILE]``
