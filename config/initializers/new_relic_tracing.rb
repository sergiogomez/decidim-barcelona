if Rails.env.production?
  require 'new_relic/agent/method_tracer'

  Decidim::Proposals::ProposalsController.class_eval do
    include ::NewRelic::Agent::MethodTracer

    add_method_tracer :index
  end
end
