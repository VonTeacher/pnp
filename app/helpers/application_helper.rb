module ApplicationHelper
  def global_navigation_menu
    nav_items = {
      'Pen & Paper' => '/',
      'Npc'         => '#',
      'Locations'   => locations_path
    }

    nav_items.each.map do |name, path|
      content_tag(
        :div,
        link_to(name, path),
        class: "global-navigation__link #{(active_link?(path) ?
          'global-navigation__link-active' :
          '')}"
      )
    end.join('').html_safe
  end

  private

  def active_link?(path, path_right = request.path)
    (URI::parse(path).path == path_right) rescue false
  end
end
