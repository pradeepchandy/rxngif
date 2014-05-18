class PicturesController < ApplicationController

  def show
    params[:id]
    @pictures =   Picture.find_by({ :id => params[:id] })
  end

  def index
    @pictures =   Picture.all
   end

   def new

   end

   def create

 @caption = params[:caption]
 @source = params[:source]

 @picture = Picture.new

@picture.caption = @caption
@picture.source = @source

@picture.save

  redirect_to("http://localhost:3000/all_pictures")
   end

def destroy

    params[:id]
    @pictures =   Picture.find_by({ :id => params[:id] })
    @pictures.destroy
      redirect_to("http://localhost:3000/all_pictures")
end


def edit
    params[:id]
    @pictures =   Picture.find_by({ :id => params[:id] })
end

def update

    @picture =   Picture.find_by({ :id => params[:id] })
    @caption = params[:caption]
    @source = params[:source]

@picture.caption = @caption
@picture.source = @source

@picture.save

  redirect_to( "http://localhost:3000/picture_details/"+@picture.id.to_s)


end

end
