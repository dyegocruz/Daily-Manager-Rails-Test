json.extract! task, :id, :today,:yesterday,:impediments,:task_date, :created_at, :updated_at
json.url task_url(task, format: :json)