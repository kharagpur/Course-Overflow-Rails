module DepartmentsHelper
  def get_departments
    lim = (Department.count/2).ceil
    html = "<ul>"
    Department.limit(lim).each do |dept|
      html << "<li><a href=\"#{ departments_path }/#{dept.id}.json\" class=\"dept_link\">#{dept.title}</a></li>"
    end
    html << '</ul><ul>'
    Department.offset(lim).each do |dept|
      html << "<li><a href=\"#{ departments_path }/#{dept.id}.json\" class=\"dept_link\">#{dept.title}</a></li>"
    end
    html << '</ul>'
    html.html_safe
  end
end