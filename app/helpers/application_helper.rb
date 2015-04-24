module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | App"
    end
  end
end
