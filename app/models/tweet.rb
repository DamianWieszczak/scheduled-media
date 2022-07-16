class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, length: { minimum: 1, maximum: 280 }
  validates :publish_at, presence: true

  # Default settings for the time of publishing your tweet - next day. You can change it
  after_initialize do
    self.publish_at ||= 24.hours.from_now
  end

  def published?
    tweet_id?
  end
end
