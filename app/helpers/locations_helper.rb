module LocationsHelper
  def title(page_title)
    if page_title
      content_for :title, "Pen & Paper | " + page_title.to_s
    else
      "Pen & Paper"
    end
  end
end
