class Post < ActiveRecord::Base
  belongs_to :user

  validates :title,
  presence: true,
  uniqueness: {case_sensitive: false},
  length: { minimum: 10 },
  length: { maximum: 100 }

  validates :link,
  presence: true,
  uniqueness: {case_sensitive: false}

  # validates_format_of :link, :with => URI::regexp(%w(http https))


end
