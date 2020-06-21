class Post < ApplicationRecord
    validates_presence_of :title, :content
    validates :content, length: { minimum: 10 }
    validates :status, inclusion: { in: [true, false] }
end