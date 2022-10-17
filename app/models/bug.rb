class Bug < ApplicationRecord

    belongs_to :user
    has_many :comments
    has_many :replies
    
end
