	class NewsController < ApplicationController
require 'nokogiri'
require 'open-uri'

def index
	
	doc = Nokogiri::HTML(open('http://economictimes.indiatimes.com/'))
	@news=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc.css('.leadStoryLt h3 a').each do |link|
	    	@news <<  [link.text.strip,'http://economictimes.indiatimes.com/'+link['href']]
	end
	#@news=@news.take(10)

	doc1 = Nokogiri::HTML(open('http://economictimes.indiatimes.com/small-biz/entrepreneurship'))
	@news1=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc1.css('.eachStory h3 a').each do |link|
	    	@news1 <<  [link.text.strip,'http://economictimes.indiatimes.com/'+	link['href']]
	end
	#@news1=@news1.take(10)

	doc2 = Nokogiri::HTML(open('http://telugu.greatandhra.com'))
	@news2=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc2.css('.news_style li a').each do |link|
	    	@news2 <<  [link.text.strip,link['href']]
	end
	#@news2=@news2.take(10)

	doc3 = Nokogiri::HTML(open('http://www.thehindu.com'))
	@news3=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc3.css('.fltrt a').each do |link|
	    	@news3 <<  [link.text.strip,link['href']]
	end
	#@news3=@news3.take(10)
	
	doc4 = Nokogiri::HTML(open('http://www.sakshi.com'))
	@news4=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc4.css('.stlisting li a').each do |link|
	    	@news4 <<  [link.text.strip,link['href']]
	end
	#@news4=@news4.take(10)


	doc5 = Nokogiri::HTML(open('http://economictimes.indiatimes.com/small-biz/startups'))
	@news5=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc5.css('.eachStory h3 a').each do |link|
	    	@news5 <<  [link.text.strip,'http://economictimes.indiatimes.com/'+	link['href']]
	end
	#@news5=@news5.take(10)

	doc6 = Nokogiri::HTML(open('http://timesofindia.indiatimes.com/'))
	@news6=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc6.css('.list9 li a').each do |link|
	    	@news6 <<  [link.text.strip,'http://timesofindia.indiatimes.com/'+link['href']]
	end
	#@news6=@news6.take(10)

	doc7 = Nokogiri::HTML(open('http://www.andhrajyothy.com'))
	@news7=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc7.css('.main-news a').each do |link|
	    	@news7<<  [link.text.strip,'http://www.andhrajyothy.com/'+link['href']]
	end
	#@news6=@news6.take(10)

	doc8 = Nokogiri::HTML(open('http://www.espncricinfo.com/'))
	@news8=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc8.css('div#most-viewed-content a').each do |link|
	    	@news8<<  [link.text.strip,'http://www.espncricinfo.com/'+link['href']]
	end
	#@news6=@news6.take(10)

	doc9 = Nokogiri::HTML(open('http://sports.ndtv.com/'))
	@news9=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc9.css('.cricket h3 a').each do |link|
	    	@news9<<  [link.text.strip,'http://sports.ndtv.com/'+link['href']]
	end
	#@news6=@news6.take(10)
	doc10 = Nokogiri::HTML(open('http://www.deccanchronicle.com/'))
	@news10=[]
	
	#doc.xpath('//div[@id="verytaja"]/a').each do |link|
	doc10.css('.topStoryContainer a').each do |link|
	    	@news10<<  [link.text.strip,'http://sports.ndtv.com/'+link['href']]
	end
	#@news6=@news6.take(10)



	
end
end
