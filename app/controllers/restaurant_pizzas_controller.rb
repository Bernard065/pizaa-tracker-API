class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        new_restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: new_restaurant_pizza, status: :created
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_not_found_response
        render json: { error: "Restaurant pizza not found" }
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.error.full_message }, status: :unprocessable_entity
    end

end
