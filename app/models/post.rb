class Post < ApplicationRecord
belongs_to :user, required:false
has_many :taggings
has_many :tags, through: :taggings
end
