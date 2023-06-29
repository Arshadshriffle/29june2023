class User < ApplicationRecord
    has_many :articles, dependent: :destroy
    has_many :comments, through: :articles 
    has_many :likes, through: :articles 

    validates :email, presence: true, uniqueness: true

end
