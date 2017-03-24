class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_attachment  :picture
  include Bootsy::Container
  include PgSearch
  pg_search_scope  :search_by_title,
                      :against => :title,
                      :using => {
                        :trigram => {
                          :threshold => 0.1
                        }
                      }
end
