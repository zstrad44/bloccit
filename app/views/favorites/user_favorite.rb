<div class="media">
  <%= render partial: 'favorite', locals: { post: post, favorite: favorite } %>
  <div class="media-body">
    <h4 class="media-heading">
      <%= link_to post.title, topic_post_path(post.topic, post) %>
    </h4>
    <small>
      submitted <%= time_ago_in_words(post.created_at) %> ago by <%= post.user.name %> <br>
      <%= post.comments.count %> Comments
    </small>
  </div>
</div>
