require 'dotenv'
Dotenv.load
require 'aws-sdk'

class RekognitionClient

  Aws.config.update({region: ENV['AWS_REGION'],
             credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])})

  def initialize
    @client = Aws::Rekognition::Client.new(region: Aws.config[:region], credentials: Aws.config[:credentials])
  end

  def get_labels
    response = @client.detect_labels(
            image: {bytes: File.read(ARGV.first) }
          )

    response.labels.each do |label|
      puts "#{label.name}-#{label.confidence.to_i}"
    end
  end
end
