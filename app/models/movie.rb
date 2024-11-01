# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many_attached :photos

  validates :correct_photo_mime_type

  private

  def correct_photo_mime_type
    return unless photos.attached?

    photos.each do |photo|
      errors.add(:photos, 'O arquivo deve ser JPEG ou PNG') unless photo.content_type.in?('image/jpeg', 'image/png')
    end
  end
end
