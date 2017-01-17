require 'spec_helper'
require './lib/rekognition_client'
require 'pry'

RSpec.describe RekognitionClient do
  let(:rekognition) { RekognitionClient.new }
  let(:file) { 'example_images/the_count.jpg' }

  it 'is an instance of OctokitApi' do
    expect(rekognition).to be_a(RekognitionClient)
  end

  describe '#get_labels' do

    it 'returns an array of structs' do
      VCR.use_cassette('get_labels') do
        stub_const('ARGV', [file])
        expect(rekognition.get_labels).to be_a(Array)
      end
    end
  end
end
