class Chatroom < ActiveRecord::Base
    has_many :chatroom_users
    has_many :users, through: :chatroom_users
    has_many :messages
end
