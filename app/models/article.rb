class Article < ApplicationRecord
    belongs_to :user 
    has_many :comments  ,dependent: :destroy
    has_many :likes 

    validates :name, :description, presence: true 
    validates :description, length: { minimum: 50}

    
end
