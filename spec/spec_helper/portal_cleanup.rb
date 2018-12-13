module PortalCleanup
  # @return [Void] reset all portal data
  def reset_portal
    reset_modules
    remove_users
  end

  # @return [Void] Set all modules to true
  def reset_modules
    SETTINGS_ENTITY_IDS.each do |module_id|
      Teamlab.settings.set_access(module_id, true)
    end
  end

  # @return [Void] Remove all user expect admin from portal
  def remove_users
    users = Teamlab.people.get_people.body['response']
    users.each do |user|
      next if user['isOwner']

      Teamlab.people.change_people_status('2', [user['id']])
      Teamlab.people.delete_user(user['id'])
    end
  end
end