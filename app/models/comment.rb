class Comment < ActiveRecord::Base
  
  belongs_to :article
  
  validates :article, presence: true
  validates :body,    presence: true
  
  paginates_per 10
  
end