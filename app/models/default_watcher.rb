class DefaultWatcher < ActiveRecord::Base
  belongs_to :user
  belongs_to :watcher, :class_name => "User"

  def self.find_all_by_user_id(user_id)
    DefaultWatcher.joins(:watcher).where(:user_id => user_id).uniq
  end

  def self.find_or_create_by_user_id_and_watcher_id(user_id, watcher_id)
    DefaultWatcher.find_or_create_by(:user_id => user_id, :watcher_id => watcher_id)
  end
end
