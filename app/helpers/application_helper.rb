module ApplicationHelper
  def pluralize(count, string)
    if count == 1
      return "#{count} #{string}"
    else
      return "#{count} #{string}s"

    end
  end
end
