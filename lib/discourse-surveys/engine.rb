# frozen_string_literal: true

module DiscourseSurvey
  PLUGIN_NAME ||= 'discourse-surveys'.freeze
  HAS_SURVEYS ||= "has_surveys"
  DEFAULT_SURVEY_NAME ||= "survey"
  DATA_PREFIX ||= "data-survey-"

  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace DiscourseSurvey

    config.after_initialize do
      Discourse::Application.routes.append do
        mount ::DiscourseSurvey::Engine, at: "/"
      end
    end
  end
end
