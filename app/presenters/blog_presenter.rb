class BlogPresenter < BasePresenter

  def creation_status
    h.time_ago_in_words(@model.created_at)
  end

end