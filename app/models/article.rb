class Article < ApplicationRecord
  belongs_to :category
  has_attachment  :picture
end
