class FinstagramPost < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_many :likes

  validates_presence_of :user

  def humanized_time_ago
    time_ago_in_minutes = Time.now - self.created_at
    time_ago_in_days = time_ago_in_minutes / 1440

    if time_ago_in_days >= 1
      "#{(time_ago_in_days / 24).to_i} days ago"
    else
      "#{time_ago_in_days.to_i} days ago"
    end
  end

  def like_count
    self.likes.size
  end

  def comment_count
    self.comments.size
  end

end

