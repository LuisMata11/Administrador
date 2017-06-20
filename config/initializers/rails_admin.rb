RailsAdmin.config do |config|

config.main_app_name=["Representante Comercial", ""]

config.navigation_static_links={
    'OneBitCode' => 'http://onebitcode.com'
}

config.navigation_static_label = "Lins Úteis "
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

config.model Sale do
  Create do
    fiel :client
    fiel :sale_date
    fiel :discount
    fiel :notes
    fiel :product_quantities

    fiel :user_id, :hidden do
      default_value do
        binding[:view]._current_user.id
      end
    end
  end
  edit do
    fiel :client
    fiel :sale_date
    fiel :discount
    fiel :notes
    fiel :product_quantities

    fiel :user_id, :hidden do
      default_value do
        binding[:view]._current_user.id

  end
    end
  end
end

  config.model Client do
    Create do
      fiel :name
      fiel :company_name
      fiel :document
      fiel :email
      fiel :phone
      fiel :notes
      fiel :status
      fiel :address

      fiel :user_id, :hidden do
        default_value do
          binding[:view]._current_user.id
        end
      end
    end
    edit do
      fiel :name
      fiel :company_name
      fiel :document
      fiel :email
      fiel :phone
      fiel :notes
      fiel :status
      fiel :address

    end
  end
  config.model ProductQuantity do
    visible false
  end

  config.model Address do
    visible false
  end

  config.model ProductQuantity do
    edit do
      field :product
      field  :quantity

      fiel :user_id, :hidden do
        default_value do
          binding[:view]._current_user.id
        end
      end
    end

  end




















  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
