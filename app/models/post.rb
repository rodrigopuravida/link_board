class Post < ActiveRecord::Base
  belongs_to :user

  validates :title,
  presence: true,
  uniqueness: {case_sensitive: false}

  validates :link,
  presence: true,
  uniqueness: {case_sensitive: false}

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}

end
