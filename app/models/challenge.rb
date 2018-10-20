class Challenge < ApplicationRecord
  require "google/cloud/vision"

  def self.send_image
    vision = Google::Cloud::Vision.new

    image = vision.image "./public/george.jpg"

    annotation = image.annonate

    byebug

    landmark.description
  end

end
