module ApplicationHelper
	# Edited by: Kenneth on March/30/2012
	# Returns the full title on a page-per basis.
	def full_title(page_title)
		base_title = "Course Overflow"
		if page_title.empty?
			return base_title
		else
			return "#{page_title} | #{base_title}"
		end
	end

	def markdown(txt)
		RDiscount.new(txt).to_html
	end
end
