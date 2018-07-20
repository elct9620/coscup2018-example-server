# frozen_string_literal: true

module Api
  module V1
    class MissionsController < Api::V1::BaseController
      def next
        render json: current_user
          .current_mission
          .next
      end

      def cancel
        # TODO: Raise error when no incomplete mission found
        render json: current_user
          .current_mission
          &.cancel
      end
    end
  end
end
