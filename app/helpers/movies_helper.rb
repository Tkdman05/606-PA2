# app/helpers/movies_helper.rb
module MoviesHelper
  def sortable_link(column, title = nil)
    title ||= column.titleize
    direction = (column == @sort_column && @sort_direction == "asc") ? "desc" : "asc"

    link_to movies_path(sort: column, direction: direction),
            class: "sortable #{sort_class(column)}" do
      "#{title} #{sort_arrow(column)}".html_safe
    end
  end

  def sort_class(column)
    return "" unless @sort_column == column
    @sort_direction == "asc" ? "sorted-asc" : "sorted-desc"
  end

  def sort_arrow(column)
    return "" unless @sort_column == column

    if @sort_direction == "asc"
      '<span class="sort-arrow" aria-label="sorted ascending">▲</span>'
    else
      '<span class="sort-arrow" aria-label="sorted descending">▼</span>'
    end
  end

  def format_date(date)
    date.strftime("%B %d, %Y") if date
  end
end
