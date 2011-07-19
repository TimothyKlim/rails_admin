migration 1, :rails_admin_install do
  up do
     create_table :rails_admin_histories do
       column :id, Serial
       column :message, String
       column :username, String
       column :table, String

       column :item, Integer
       column :month, Integer
       column :year, Integer

       column :created_at, DateTime
       column :created_on, Date
       column :updated_at, DateTime
       column :updated_on, Date
    end

    create_index :rails_admin_histories, :item, :table, :month, :year
  end

  down do
    drop_table :rails_admin_histories
  end
end