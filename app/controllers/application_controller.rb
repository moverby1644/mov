class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @mov = Mov.find_by_id(params['id'])
  end
  
  def new
  end
  
  def create
    m = Mov.new
    m.url = params['url']
    m.title2 = params['title2']
    m.detail = params['detail']
    m.save
    redirect_to "/mov/#{ m.id }"
  end
  
  def edit
    @mov = Mov.find_by_id(params['id'])
  end
  
  def update
    m = Mov.find_by_id(params['id'])
    m.url = params['url']
    m.title2 = params['title2']
    m.detail = params['detail']
    m.save
    redirect_to "/mov/#{ m.id }"
  end
  
def destroy
  m = Mov.find_by_id(params['id'])
  m.destroy
  redirect_to "/mov"
end
  
  def index
    @mov = Mov.all
  end

end
