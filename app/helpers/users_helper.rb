module UsersHelper
    def current_user?(user)
      user == current_user
    end
  
    def user_list_title
      "ユーザー一覧"
    end
end
  