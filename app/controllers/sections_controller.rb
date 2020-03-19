class SectionsController < ApplicationController
    def index
        @sections = Section.all
    end
    def new
        @sections = Section.new
        
    end
    def create
        @sections = Section.new(section_params)
        if @sections.save
          redirect_to @sections
        else
          render :new
        end
    end
    def show
        @sections = Section.find(params[:id])
        #redirect_to home_path, notice: "Se ha creado la seccion exitosamente"
    end
      
      private
        def section_params
          params.require(:section).permit(:name)
        end
end
