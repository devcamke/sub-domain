class Account < ApplicationRecord
    has_many :posts, dependent: :destroy
end
