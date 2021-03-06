# Enable setting and getting of configuration options.
#
# Example:
#
#   This can now be used under config/initializers/flakey.rb
#   Flakey.configure do |config|

#   end

module Flakey
  class Configuration
    attr_accessor :twitter_handle, :tweet_hashtags,
      :tweet_via, :tweet_related,
      :tweet_button_size, :tweet_button_class,
      :tweet_label, :follow_button_size,
      :follow_button_class, :follow_button_show_count,
      :facebook_nickname, :facebook_app_id,
      :stackoverflow_nickname, :stackoverflow_user_id,
      :github_name, :plus_one_button_language

    def initialize
      self.twitter_handle = ''
      self.tweet_hashtags = ''
      self.tweet_via = ''
      self.tweet_related = ''
      self.tweet_label = 'Tweet'

      self.follow_button_show_count = 'false'

      self.facebook_nickname = ''

    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end
end
