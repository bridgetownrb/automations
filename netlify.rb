create_file "netlify.toml" do
  <<~NETLIFY
    [build]
      command = "yarn deploy"
      publish = "output"

    [build.environment]
      NODE_VERSION = "12"

    [context.production.environment]
      BRIDGETOWN_ENV = "production"
  NETLIFY
end
