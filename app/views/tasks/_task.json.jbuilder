json.extract! task, :id, :name, :description, :start_at, :to_end_at, :priority, :created_at, :updated_at
json.url task_url(task, format: :json)