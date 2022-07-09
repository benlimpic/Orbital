class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :body, :priority, :life_cycle, :project_id, :slug
  has_many :subtasks
end
