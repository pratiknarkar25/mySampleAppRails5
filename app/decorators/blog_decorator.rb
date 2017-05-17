class BlogDecorator < Draper::Decorator #ApplicationDecorator #Draper::Decorator
  delegate_all

  # decorates :blog
  # allows :title

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def generation_date
  	model.created_at.strftime("%A, %B %e")
  end
  	
end
