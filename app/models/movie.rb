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
  def photo_size_validation
    if photos.attached?
    photos.each do |photo|
     if photo.byte_size > 5.megabytes
       errors.add(:photos, 'deve ser menor que 5MB')
     end
    end
   end
  end
end
