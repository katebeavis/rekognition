require_relative 'rekognition_client'

class Detect

  def initialize
   @client = RekognitionClient.new
  end

  def labels
    @client.get_labels
  end

end

detect = Detect.new
detect.labels
