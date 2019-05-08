class Model < ApplicationRecord
  has_one_attached :image
  before_validation :set_record_dimensions
  validates :width, :height, presence: true

  private

  def set_record_dimensions
    image.blob&.analyze
    self.width = image&.metadata['width']
    self.height = image&.metadata['height']
  end
end
