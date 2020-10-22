class Article < ApplicationRecord 
    belongs_to :user
    validates :title, presence: true, length: {minimum:3, maximum:20}
    validates :description, presence: true, length: {minimum:5, maximum:25}
end