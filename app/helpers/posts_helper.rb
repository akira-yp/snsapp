module PostsHelper
  def choose_index_or_edit
    if action_name == 'index'
      confirm_posts_path
    elsif action_name == 'edit'
      post_path
    end
  end
end
