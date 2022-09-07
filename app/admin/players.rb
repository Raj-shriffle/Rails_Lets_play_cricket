ActiveAdmin.register Player do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :player_name, :player_age, :player_gender, :player_type, :team_id, :image1

  form do |f|
    f.inputs do
      f.input :team_id
      f.input :player_name
      f.input :player_age
      f.input :player_gender
      f.input :player_type
      f.input :image1, as: :file
    end
    f.actions
  end

  show do |product|
    attributes_table do
      row :player_name
      row :player_age 
      row :player_gender
      row :player_type
      row :image do |ad|
        image_tag url_for(ad.image1), style: "max-width: 50%"
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:player_name, :player_age, :player_gender, :player_type, :team_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
