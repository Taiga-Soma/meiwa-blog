class Blog < ApplicationRecord
  has_one_attached :image
  with_options presence: true do
    validates :title
    validates :sentence
    validates :date
    validates :images
  end
end
