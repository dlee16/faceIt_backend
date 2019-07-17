class User < ApplicationRecord
    has_many :userimages 
    has_many :images, through: :userimages 
end
