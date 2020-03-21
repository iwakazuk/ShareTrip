class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { maximum: 50 }
  has_many :posts, dependent: :destroy
  # ProfileImageアップローダーを紐付け
  mount_uploader :profile_image, ProfileImageUploader
  # like関係
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  # comment
  has_many :comments
  
  def posts
    return Post.where(user_id: self.id)
  end

  def already_liked?(post)
    likes.exists?(post_id: post.id)
  end

  def self.search(search)
    where(['name LIKE ?', "%#{search}%"])
  end
end
