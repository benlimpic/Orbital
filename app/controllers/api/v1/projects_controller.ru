module Api
  module V1
    class ProjectsController < ApplicationController

      def index
        projects = Project.all

        render json: ProjectSerlializer.new(projects, options).serialized_json
      end

      def show
        project = Project.find_by(slug: params[:slug])

        render json: ProjectSerializer.new(project, options).serialized_json
      end
      
      def create
        project = Project.new(project_params)

        if project.save
          render json: ProjectSerializer.new(project).serialized_json
        else
          render json: { errors: project.errors.full_messages }, status: 422
        end
      end
      
      def update
        project = Project.find_by(slug: params[:slug])

        if project.update(project_params)
          render json: ProjectSerializer.new(project, options).serialized_json
        else
          render json: { errors: project.errors.full_messages }, status: 422
        end
      end
      
      def destroy
        project = Project.find_by(slug: params[:slug])

        if project.destroy
          head :no_content
        else
          render json: { errors: project.errors.full_messages }, status: 422
        end
      end

      private
      
      def project_params
        params.require(:project).permit(:title, :description, :body, :priority, :life_cycle)
      end

      def options
        @options ||= { include: %i[:tasks] }
      end

    end
  end
end