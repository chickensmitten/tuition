class TopicsController < ApplicationController
  def index
    @topics = Topic.all #Needs to be limited to the programme that the topic belongs to
  end

  def show
    #@topic = @programme.topics.find(params[:id])    
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create #topic create is nested beneath programme, hence @programme must be called
    @programme = Programme.find(params[:programme_id])
    @topic = @programme.topics.build(topic_params)
    #alternative syntax  
    #@topic = Topic.new(topic_params)
    #@programme.topic = @topic

    if @topic.save
      flash[:notice] = "Your topic was created."
      redirect_to programme_path(@programme) #this new topic is called to the programme object
    else
      render "programmes/show"
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      flash[:notice] = "This topic was updated."
      redirect_to topics_path(@topic)
    else
      render :edit
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :number)
  end
end