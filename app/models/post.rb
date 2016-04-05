class Post < ActiveRecord::Base
    validates :user_id, presence: true 
    belongs_to :user
     validates :caption, presence: false, length: { minimum: 0, maximum: 300 }
    has_many :comments, dependent: :destroy
    validates :image, presence: true
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment :image,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  
  
end

