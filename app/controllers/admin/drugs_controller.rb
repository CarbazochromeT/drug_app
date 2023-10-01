module Admin
  class DrugsController < Admin::ApplicationController
    prepend AdministrateRansack::Searchable

    def ransack_options
      # raises an exception on unknown parameters
      { ignore_unknown_conditions: false }
    end
    #カスタム動作を実装するために、RESTFULコントローラーアクションのいずれかを上書きします
    #たとえば、Fooが更新された後にメールを送信することができます。
    #
    # def update
    #   super
    #   send_foo_updated_email(requested_resource)
    # end

    #この方法をオーバーライドして、カスタムルックアップ動作を指定します。
    #これは、「show」、「edit」、および `update`のリソースを設定するために使用されます
    #行動。
    #
  #  def find_resource(param)
      #Drug.find_by!(slug: param)
    #end

    #このルックアップの結果は、「requested_resource」として利用可能になります

    #ブセットを必要とする特定の役割がある場合、これをオーバーライドします
    #これは、「インデックス」アクションに表示されるレコードを設定するために使用されます。
    #
    def scoped_resource
      @ransack_results = super.ransack(params[:q])
      @ransack_results.result(distinct: true)
    end

    #送信されたものを変換する場合は、 `resource_params`をオーバーライドします
    #それが持続する前のデータ。 たとえば、以下はすべて変わります
    #nil値への空の値。 `Resource_Class`などの他のAPIを使用します
    #と「ダッシュボード」：
    #
    # def resource_params
    #   params.require(resource_class.model_name.param_key).
    #     permit(dashboard.permitted_attributes(action_name)).
    #     transform_values { |value| value == "" ? nil : value }
    # end

    # See https://administrate-demo.herokuapp.com/customizing_controller_actions
    # for more information
end
end
