class SnakeCaseAllTables < ActiveRecord::Migration[5.0]
  def change
    rename_column :about_sections, :titleVn, :title_vn
    rename_column :about_sections, :descriptionVn, :description_vn

    rename_column :awards, :titleVn, :title_vn
    rename_column :awards, :descriptionVn, :description_vn

    rename_column :chef_sections, :titleVn, :title_vn
    rename_column :chef_sections, :descriptionVn, :description_vn

    rename_column :contacts, :titleVn, :title_vn
    rename_column :contacts, :descriptionVn, :description_vn
    rename_column :contacts, :companyName, :company_name_vn
    rename_column :contacts, :fbLink, :fb_link

    rename_column :descriptions, :bodyVn, :body_vn

    rename_column :dishes, :titleVn, :title_vn
    rename_column :dishes, :dishDate, :dish_date
    rename_column :dishes, :youtubeLink, :youtube_link

    rename_column :histories, :titleVn, :title_vn
    rename_column :histories, :descriptionVn, :description_vn

    rename_column :ingredients, :BodyVn, :body_vn

    rename_column :inquiries, :firstName, :first_name
    rename_column :inquiries, :lastName, :last_name

    rename_column :news_posts, :titleVn, :title_vn
    rename_column :news_posts, :descriptionVn, :description_vn
    rename_column :news_posts, :newsDate, :news_date

    rename_column :news_sections, :titleVn, :title_vn
    rename_column :news_sections, :descriptionVn, :description_vn

    rename_column :product_sections, :titleVn, :title_vn
    rename_column :product_sections, :descriptionVn, :description_vn

    rename_column :products, :titleVn, :title_vn

    rename_column :why_us, :titleVn, :title_vn
    rename_column :why_us, :descriptionVn, :description_vn

  end
end
