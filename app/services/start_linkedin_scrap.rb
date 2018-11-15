require 'dotenv'
require 'watir'
require 'headless'
Dotenv.load
class StartLinkedinScrap
  
  def initialize
    @email = ENV['EMAIL']
    @password = ENV['PASSWORD']
  end

  def browser
    opts = {
    headless: true
  }

  if (chrome_bin = ENV.fetch('GOOGLE_CHROME_SHIM', nil))
    opts.merge!( options: {binary: chrome_bin})
  end 
    @browser ||= Watir::Browser.new :chrome, opts
  end
  
  def login
    @browser.goto('https://www.linkedin.com/')
    email = @browser.text_field(id: 'login-email')
    email.set(@email)
    password = @browser.text_field(id: 'login-password')
    password.set(@password)
    password.send_keys(:enter)
    sleep(2)
  end
  
  def search
    j = 1 + rand(100)
    i = 1
    @browser.goto("https://www.linkedin.com/search/results/people/?facetIndustry=%5B%226%22%5D&origin=FACETED_SEARCH&page=#{j}")
    sleep(5)
    while i <= 10
      name = @browser.element(:xpath => "/html/body/div[5]/div[6]/div[3]/div/div[2]/div/div/div[2]/div/div/div/div/ul/li[#{i}]/div/div/div[2]/a/h3/span/span/span[1]")
      add = @browser.element(:xpath => "/html/body/div[5]/div[6]/div[3]/div/div[2]/div/div/div[2]/div/div/div/div/ul/li[#{i}]/div/div/div[3]/div/button")
      if name.exists? && add.exists? && (User.find_by(name: name.text) == nil )
        User.create(name: name.text)
        @browser.element(:xpath =>"/html/body/div[5]/div[6]/div[3]/div/div[2]/div/div/div[2]/div/div/div/div/ul/li[#{i}]/div/div/div[3]/div/button").click
        @browser.element(:xpath => "/html/body/div[5]/div[7]/div/div[1]/div/section/div/div[2]/button[1]").click
        sleep(2)
        @browser.textarea(id: 'custom-message').set("Bonjour #{name.text.split(" ")[0]} je suis un charmant petit robot codé par un élève de THP. C'est une super formation qui t'apprends à développer une appli Rails en seulement 2 mois. Incroyable non ? Ils proposent aussi des formations continues pour les entreprises alors  viens faire un tour sur http://thpalpha-advanced-landing.herokuapp.com/compagny pour nous dire bonjour !" )
        sleep(2)
        @browser.element(:xpath =>"/html/body/div[5]/div[7]/div/div[1]/div/section/div/div[2]/button[2]").click
        sleep(2)
      end
      i += 1
    end
  end

  def perform
    initialize
    browser
    login
    search
  end

end

