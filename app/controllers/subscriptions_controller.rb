class SubscriptionsController < ApplicationController

    before_action :set_company, only: %i[update_company]
    attr_accessor :company

    def index
    end

    def update_company
        redirect_to subscriptions_path, notice: company.save ? "Plan updated!" : "Plan was not updated!!" 
    end

    private

    def subscription_params
        params.require(:subscription)
    end

    def set_company
        @company = Company.find_or_create_by(subscription_plan: subscription_params)
    end
end
