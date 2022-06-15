module ApplicationHelper
  def inclination(count, one, many)

    case count % 10
    when 1..4 then one
    else
      many
    end
  end
end
