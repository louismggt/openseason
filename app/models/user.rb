require 'mechanize'
require 'open-uri'
require 'nokogiri'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :missions
  has_many :favorites
  has_many :work_experiences
  has_many :preferences

  def scrap_cv_with_linkedin
    # ------------ AUTHENTIFICATION --------------------
    # first endpoint
    # url = 'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin'
    require 'open-uri'
    require 'nokogiri'

    url = 'https://github.com/login?client_id=c95340104925e8be5c12&return_to=%2Flogin%2Foauth%2Fauthorize%3Fclient_id%3Dc95340104925e8be5c12%26redirect_uri%3Dhttps%253A%252F%252Fkitt.lewagon.com%252Fusers%252Fauth%252Fgithub%252Fcallback%26response_type%3Dcode%26scope%3Duser%252Cwrite%253Arepo_hook%252Crepo%26state%3D1639e45fd5832667e5593064b3284c6c4c453d8f13a3b958'

    # initialize agent
    # Mechanize.html_parser = Nokogiri::HTML test remi !!!!!!
    agent = Mechanize.new
    # to avoid anti-robot script
    agent.user_agent_alias = 'Mac Safari'
    # open first link
    page = agent.get(url)
    # page = agent.get(doc)
    # ---- Form --------
    # get the form of the page
    form = page.form
    # fill it
    form["session_key"] = "patujulie@gmail.com"
    form["session_password"] = ENV['WAGON_PASSWORD']
    # submit it
    # get the page after submit
    page = form.submit
    # puts "form submitted"P
    # ------------ FIN AUTHENTIFICATION --------------------
    # -------------- SCRAPPING SUR LINKEDIN ----------------
    # after sign in, try to open the new page
    # puts "----- AFTER SIGNIN ------"
    puts "Je sleep 2 secondes"
    sleep(2)

    # url = "https://www.linkedin.com/in/julie-paturel-aa075b113"
    url = "https://kitt.lewagon.com/alumni/patujulie"

    page = agent.get(url)
    p page


    # file      = File.open('url')
    # # -----------------FILE ----------------
    # p file
    # document  = Nokogiri::XML(file)

    # document.root.xpath('alumnus-experiences').each do |alumnus|
    #   title        = alumnus.xpath('experience-title').text
    #   name  = alumnus.xpath('experience-corp-name').text
    #   date      = alumnus.xpath('experience-dates').text

    #   puts "#{title}, a #{name} beer from #{date}"
    # end

    # h1 = page.at_css "<div class="alumnus-experiences"></div>"
    # p h1
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    p html_doc

    # html_doc.search('.alumnus-experiences').each do |element|
    #   puts element.text.strip
    # end
  end
end
