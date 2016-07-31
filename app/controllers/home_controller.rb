class HomeController < ApplicationController
  def index
    
    @posts = Post.all.reverse

  end
  
  def main
    
    @posts = Post.all.reverse    
    
  end
  
  def create
  end
  
  def create_result
    
    @posts = Post.all.reverse.first
  
  end
  
  def creator
    post = Post.new(
    title: params[:title], content: params[:content], region: params[:region],
    place: params[:place], date: params[:date], time: params[:time], people: params[:people],
    
    food: params[:food], citytour: params[:citytour], suburbtour: params[:suburbtour],
    guidetour: params[:guidetour], concert: params[:concert], sports: params[:sports],
    gallery: params[:gallery], museum: params[:museum],
    historic: params[:historic], room: params[:room], car: params[:car],
    
    male: params[:male], female: params[:female],
    age: params[:age],
    style: params[:style], personality: params[:personality], money: params[:money]
    )
    
    if post.save
      redirect_to "/home/create_result"
    else
      redirect_to "/home/create"
    end
  end

  def destroy
    @one_post = Post.find(params[:id])
    @one_post.destroy
    redirect_to '/home/index'
  end
  
  def search
  end
  
  def search_result
    
    region = params[:region]
    @region = params[:region]
    date = params[:date]
    @date = params[:date]
    
    unless params[:food].nil?
      food = true
      @food = true
    else
      @food = false
    end
    
    unless params[:citytour].nil?
      citytour = true
      @citytour = true
    else
      @citytour = false
    end
    
    unless params[:suburbtour].nil?
      suburbtour = true
      @suburbtour = true
    else
      @suburbtour = false
    end
    
    unless params[:guidetour].nil?
      guidetour = true
      @guidetour = true
    else
      @guidetour = false
    end
    
    unless params[:concert].nil?
      concert = true
      @concert = true
    else
      @concert = false
    end
    
    unless params[:sports].nil?
      sports = true
      @sports = true
    else
      @sports = false
    end
    
    unless params[:gallery].nil?
      gallery = true
      @gallery = true
    else
      @gallery = false
    end
    
    unless params[:museum].nil?
      museum = true
      @museum = true
    else
      @museum = false
    end
    
    unless params[:historic].nil?
      historic = true
      @historic = true
    else
      @historic = false
    end
    
    unless params[:room].nil?
      room = true
      @room = true
    else
      @room = false
    end
    
    unless params[:car].nil?
      car = true
      @car = true
    else
      @car = false
    end
    
    post = Post.where("((region = ?) and (date = ?) and (food = ? or citytour = ?
    or suburbtour =? or guidetour =? or concert =? or sports =? or gallery =?
    or museum =? or historic =? or room =? or car =?))",
    region, date, food, citytour, suburbtour, guidetour, concert, sports, gallery, museum, historic, room, car)
    @posts = post.reverse
    
  end
  
  def filter
  
    @region = params[:region]
    @date = params[:date]
    @food = params[:food]
    @citytour = params[:citytour]
    @suburbtour = params[:suburbtour]
    @guidetour = params[:guidetour]
    @concert = params[:concert]
    @sports = params[:sports]
    @gallery = params[:gallery]
    @museum = params[:museum]
    @historic = params[:historic]
    @room = params[:room]
    @car = params[:car]
  
  end
  
  def filter_result
    
    region = params[:region]
    @region = params[:region]
    date = params[:date]
    @date = params[:date]
    
    unless params[:food].nil?
      food = true
    end
      @food = params[:food]
    unless params[:citytour].nil?
      citytour = true
    end
      @citytour = params[:citytour]
    unless params[:suburbtour].nil?
      suburbtour = true
    end
      @suburbtour = params[:suburbtour]
    unless params[:guidetour].nil?
      guidetour = true
    end
      @guidetour = params[:guidetour]
    unless params[:concert].nil?
      concert = true
    end
      @concert = params[:concert]
    unless params[:sports].nil?
      sports = true
    end
      @sports = params[:sports]
    unless params[:gallery].nil?
      gallery = true
    end
      @gallery = params[:gallery]
    unless params[:museum].nil?
      museum = true
    end
      @museum = params[:museum]
    unless params[:historic].nil?
      historic = true
    end
      @historic = params[:historic]
    unless params[:room].nil?
      room = true
    end
      @room = params[:room]
    unless params[:car].nil?
      car = true
    end
      @car = params[:car]
     
    unless params[:male].nil?
      male = true
    else
      male = false
    end
      @male = params[:male]
    unless params[:female].nil?
      female = true
    else
      female = false
    end
      @female = params[:female]
    
    age = params[:age]
    style = params[:style]
    personality = params[:personality]
    money = params[:money]
    
    post = Post.where("((region = ?) and (date = ?) and (food = ? or citytour = ?
    or suburbtour =? or guidetour =? or concert =? or sports =? or gallery =?
    or museum =? or historic =? or room =? or car =?)
    and (male =? or female =? )and (age =? )and (style =? )and (personality =? )and (money =? ))",
    region, date, food, citytour, suburbtour, guidetour, concert, sports, gallery, museum, historic, room, car,
    male, female, age, style, personality, money)
    
    @posts = post.reverse
   
  end
end