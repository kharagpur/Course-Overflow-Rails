module DepartmentsHelper
  def get_departments
    lim = (Department.count/2).ceil
    html = "<ul>"
    Department.limit(lim).each do |dept|
      #html << "<li><a href=\"#{ departments_path }/#{dept.id}\">#{dept.title}</a></li>"
      #TEMP FOR CHECKPOINT
      html << "<li><a href=\"#\">#{dept.title}</a></li>"
    end
    html << '</ul><ul>'
    Department.offset(lim).each do |dept|
      #html << "<li><a href=\"#{ departments_path }/#{dept.id}\">#{dept.title}</a></li>"
      #TEMP FOR CHECKPOINT
      html << "<li><a href=\"#\">#{dept.title}</a></li>"
    end
    html << '</ul>'
    html.html_safe
  end
  
  def get_courses(dept)
    
  end
end