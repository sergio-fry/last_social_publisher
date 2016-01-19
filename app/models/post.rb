class Post < ActiveRecord::Base
  has_many :postings
  validates :title, presence: true
end
