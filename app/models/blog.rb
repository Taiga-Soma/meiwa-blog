class Blog < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :sentence
    validates :date
    validates :images
  end
end
