class Group < ApplicationRecord
    has_many :users, :through => :group_permissions
    after_create :create_admin_user

    def self.all_for_user(user)
        where(id: GroupPermission.select("group_id").where(user_id: user.id))
    end

    def self.where_admin_for_user(user)
        where(id: GroupPermission.select("group_id").where(user_id: user.id, admin: true))
    end

    def create_admin_user
        group_permission = GroupPermission.new(user_id: self.user_id, group_id: self.id, admin: true)
        group_permission.save
    end

    def self.search(search)
        if search
            self.where('name LIKE ?', "%#{params[:search]}%")
        end
    end
end
