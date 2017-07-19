# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

#Rails.application.config.serve_static_assets = true
# Add additional assets to the asset load path
#Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += ["global.css"]
Rails.application.config.assets.precompile += ["bootstrap.css"]
Rails.application.config.assets.precompile += ["cssmodal.css"]
Rails.application.config.assets.precompile += ["desktopcss.css"]
Rails.application.config.assets.precompile += ["fullscreen.css"]
Rails.application.config.assets.precompile += ["modal.css"]
Rails.application.config.assets.precompile += ["queries_iphone.css"]
Rails.application.config.assets.precompile += ["queries_samsung.css"]
Rails.application.config.assets.precompile += ["queries_tablet.css"]
Rails.application.config.assets.precompile += ["square.css"]

Rails.application.config.assets.precompile += ["carousel.js"]
Rails.application.config.assets.precompile += ["formular.js"]
Rails.application.config.assets.precompile += ["fullscreen.js"]
Rails.application.config.assets.precompile += ["modalLJS.js"]
Rails.application.config.assets.precompile += ["modalJss.js"]
