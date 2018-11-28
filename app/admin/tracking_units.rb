ActiveAdmin.register TrackingUnit do

  index do
    id_column
    column "UNIT ID", :asset_id
    column ("MAIN IMAGE") { |t| t.main_image_uid }
    column ("BRAND OWNER") { |t| t.brand&.brand_owner }
    column ("BRAND") { |t| t.brand }
    column ("UNIT DESCRIPTION") { |t| t.unit_description }
    column ("REGION") { |t| t.project.region }
    column ("DF LOCATION") { |t| t.current_duty_free_location }
  end

  filter :created_at, label: 'Date', as: :date_range
  filter :project_location_type, as: :select, collection: Project.pluck(:location_type).uniq, label: 'LOCATION TYPE'
  filter :project_region, as: :select, collection: Project.pluck(:region).uniq, label: 'REGION'
  filter :current_duty_free_location, as: :select, collection: TrackingUnit.pluck(:current_duty_free_location).uniq, label: "DF LOCATION"
end
