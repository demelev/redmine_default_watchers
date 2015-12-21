# TODO postgresql specific
class DefaultWatchersAddFkConstraint < ActiveRecord::Migration
  def self.up
    #execute "CREATE INDEX idx_default_watchers_user_id ON default_watchers (user_id)"
    #execute "DELETE FROM default_watchers WHERE id in (SELECT dw.id FROM default_watchers dw LEFT JOIN users u ON u.id = dw.user_id WHERE u.id IS NULL)"
    #execute "ALTER TABLE default_watchers ADD CONSTRAINT fk_default_watchers_user_id FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE"

    #execute "CREATE INDEX idx_default_watchers_watcher_id ON default_watchers (watcher_id)"
    #execute "DELETE FROM default_watchers WHERE id in (SELECT dw.id FROM default_watchers dw LEFT JOIN users u ON u.id = dw.watcher_id WHERE u.id IS NULL)"
    #execute "ALTER TABLE default_watchers ADD CONSTRAINT fk_default_watchers_watcher_id FOREIGN KEY (watcher_id) REFERENCES users (id) ON DELETE CASCADE"
  end

  def self.down
    execute "ALTER TABLE default_watchers DROP CONSTRAINT IF EXISTS fk_default_watchers_user_id"
    execute "ALTER TABLE default_watchers DROP CONSTRAINT IF EXISTS fk_default_watchers_watcher_id"
    execute "DROP INDEX IF EXISTS idx_default_watchers_user_id"
    execute "DROP INDEX IF EXISTS idx_default_watchers_watcher_id"
  end
end
