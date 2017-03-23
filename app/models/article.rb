class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_attachment  :picture
  include Bootsy::Container
end
