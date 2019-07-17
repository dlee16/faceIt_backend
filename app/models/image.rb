class Image < ApplicationRecord
    has_many :userimages
    has_many :users, through: :userimages
end
