module Quizzy
  class Engine < ::Rails::Engine
    config.assets.precompile += %w( home.js devise.js quizzy_manifest.js tailwind.config.js)
  end
end
