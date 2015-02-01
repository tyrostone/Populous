class PopulousController < ApplicationController
  def index
  end

  def about
  end

  def issues
    @issues = Issue.all
  end

  def reps
    @representatives = Representative.all
  end

  def details
  end

  def contribution
  end

  def confirm
  end

  def contact
  end

  def upvoteissue
    p params[:id]
    p params[:vote]
    alert("woot")

    #@pg = Page.find(params[:id])
    
    #if(params[:checked]=='true') 
    #  @pg.exclude = 1
    #else
    #  @pg.exclude = 0
    #end

    #@pg.save

    render :nothing => true 
  end
end
