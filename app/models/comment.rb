class Comment < ApplicationRecord
    belongs_to :article
    belongs_to :user
  

    validates :comment_desc ,presence: true


end
