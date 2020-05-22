say_status :graphql, "Let's set up your GraphQL builder!"

run "bundle add graphlient"

say ""
graphql_endpoint = ask("What's the endpoint URL for your GraphQL API?")

append_to_file "bridgetown.config.yml" do
  <<~YAML

    graphql_endpoint: #{graphql_endpoint}
  YAML
end

code = <<~RUBY


  # Construct a GraphQL client pointing to the graqhql_endpoint config variable
  def graphql(graph_name)
    client = Graphlient::Client.new(config[:graphql_endpoint])
    client.execute(send(:"\#{graph_name}_graph").to_s).data.send(graph_name)
  end
RUBY

inject_into_file "plugins/site_builder.rb", code.indent(2).chomp, before: "\nend", verbose: false, force: false
say_status :graphql, "Added a graphql method to site_builder.rb"

create_builder "graphql_builder.rb" do
  <<~RUBY
  require "graphlient"

  class GraphqlBuilder < SiteBuilder
    def posts_graph
      # Customize this query to suit the schema you're using:
      Graphlient::Query.new do
        query {
          posts {
            id
            title
            description
            body
          }
        }
      end
    end
  
    def build
      # Run the GraphQL Query. The symbol passed to the graphql method will
      # look for a :SYM_graph method to get the Graphlient query object
      # and then pull that same data structure out of the query.
      posts = graphql(:posts)

      # Loop through the posts data and create new post documents
      posts.each do |post|
        # Turn the title into a slug: I'm a Title -> im-a-title
        slug = Bridgetown::Utils.slugify(post.title)
        # Construct the document:
        doc "\#{slug}.md" do
          layout "post"
          front_matter post.to_h
          content post.body
        end
      end
    end
  end
  RUBY
end

say_status :graphql, "All set! Open plugins/builders/graphql_builder.rb and write your query!"
