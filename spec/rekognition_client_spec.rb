require 'spec_helper'
require './lib/rekognition_client'

RSpec.describe RekognitionClient do
  let(:rekognition) { RekognitionClient.new }

  it 'is an instance of OctokitApi' do
    expect(rekognition).to be_a(RekognitionClient)
  end
end
