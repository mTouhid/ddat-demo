module ApplicationHelper

  def nav_link_class(some_path)
    if current_page?(some_path)
      {class: "nav-link active"}
    else
      {class: "nav-link"}
    end
  end
end
