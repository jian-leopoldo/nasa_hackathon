class Challenge < ApplicationRecord
  has_one_attached :challenge_image
  require "google/cloud/vision"
  require 'base64'


  def self.send_image
    vision = Google::Cloud::Vision.new

    image = vision.image "./public/george.jpg"

    annotation = image.annonate

    byebug

    landmark.description
  end

  def send_image(url)
    vision = Google::Cloud::Vision.new

    image = vision.image url
    annotation = image.annotate

    annotation
  end
  
end
