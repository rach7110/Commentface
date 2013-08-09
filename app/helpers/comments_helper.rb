module CommentsHelper
  def avatar_src_for_comment(comment)
    # Checkout out http://unicornify.appspot.com/
    "http://unicornify.appspot.com/avatar/#{Digest::MD5.hexdigest(comment.name)}?s=80"
  end
end
