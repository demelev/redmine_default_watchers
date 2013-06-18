class DefaultWatchers < Redmine::Hook::ViewListener
  render_on :view_issues_new_top, :partial => "default_watchers/set_watchers"
end