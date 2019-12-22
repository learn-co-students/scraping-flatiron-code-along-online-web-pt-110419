require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
  def get_page 
    html = open("https://flatironschool.com")
    doc = Nokogiri::HTML(html)
  end 
  
  def get_courses
    html = open("https://flatironschool.com")
    doc = Nokogiri::HTML(html)
    doc.css(".link-3R0TyF")
  end 
  
  def make_courses
    new_course = Course.new()
    new_course.title = "Software Engineering"
    new_course.schedule = "Fall"
    new_course.description = "Some software engineering"
  end 
  
end



