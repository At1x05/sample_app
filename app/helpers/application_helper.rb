module ApplicationHelper
  
  # Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title='')
    @title_schema='Sample App made by Matidea.pl'
    if page_title.empty?
      @title_schemat
    else page_title + '|' + @title_schema
    end
  end
end
