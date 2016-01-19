class Posting < ActiveRecord::Base
  belongs_to :post

  validates :link, presence: true
end
