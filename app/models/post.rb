class Post < ActiveRecord::Base
    has_many :replies
    validates :title, presence: {message: "제목을 적어주세요"}
    
end
