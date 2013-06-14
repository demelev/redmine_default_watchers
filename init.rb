require 'redmine'

Redmine::Plugin.register :redmine_default_watchers do
  name 'Redmine Default Watchers plugin'
  author 'Masatomo Nakano, Robert Gravina'
  description 'Redmine plugin allowing users to manage a default watchers list. These watchers are checked by default when creating a new issue.'
  version '0.1.0'
  menu :top_menu, :default_watchers, {:controller => :default_watchers, :action => :index}, :caption => 'Watchers'
end
