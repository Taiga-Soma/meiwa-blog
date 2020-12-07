class Blog < ApplicationRecord
  has_one_attached :images
  with_options presence: true do
    validates :title
    validates :sentence
    validates :date
    validates :images
  end
end
