class Post < ActiveRecord::Base
    
    belongs_to :users
    
    validates :user_id, {presence: true}
    validates :title, {presence: true}
    validates :content, {presence: true}
    
    def user
      return User.find_by(id: self.user_id)
    end
    
    def short_description
      description[0, 9] + '...'
    end
    
end
