class Article < ApplicationRecord
  belongs_to :category
  has_attachment  :picture
  include Bootsy::Container
end
