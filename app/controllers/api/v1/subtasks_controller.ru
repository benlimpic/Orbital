module Api
  module V1
    class SubtasksController < ApplicationController

      def index
        subtasks = Subask.all

        render json: SubtaskSerlializer.new(subtask).serialized_json
      end

      def show
        subtask = Subtask.find_by(slug: params[:slug])

        render json: SubtaskSerializer.new(subtask).serialized_json
      end
      
      def create
        subtask = Subtask.new(subtask_params)

        if subtask.save
          render json: SubtaskSerializer.new(subtask).serialized_json
        else
          render json: { errors: subtask.errors.full_messages }, status: 422
        end
      end
      
      def update
        subtask = Subtask.find_by(slug: params[:slug])

        if subtask.update(subtask_params)
          render json: SubtaskSerializer.new(subtask).serialized_json
        else
          render json: { errors: subtask.errors.full_messages }, status: 422
        end
      end
      
      def destroy
        subtask = Subtask.find_by(slug: params[:slug])

        if subtask.destroy
          head :no_content
        else
          render json: { errors: subtask.errors.full_messages }, status: 422
        end
      end

      private

      def subtask_params
        params.require(:subtask).permit(:title, :description, :body, :priority, :life_cycle, :task_id)
      end

    end
  end
end