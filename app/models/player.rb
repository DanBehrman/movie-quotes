class Player < ApplicationRecord
    has_secure_password
    validates :user_name, uniqueness: true, presence: true, length: { minimum: 3 }
    validates :password, length: { in: 6..20 }
end
