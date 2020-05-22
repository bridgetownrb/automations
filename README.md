# Bridgetown Automations

_COMING IN Bridgetown v0.15!_

A collection of helpful automation scripts for [Bridgetown](https://www.bridgetownrb.com) sites. Simply run `bundle exec bridgetown apply URL`, where URL is this repo URL along with the automation filename. You can also run an automation as part of a new site setup using `bundle exec bridgetown new mysite -a URL`.

## Netlify TOML Configuration

Adds a basic configuration to your site for use in Netlify deployments.

**[Review](netlify.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/bridgetown-automations/netlify.rb
```

## GraphQL Builder

Adds the [Graphlient](http://github.com/ashkan18/graphlient) gem and creates a `GraphqlBuilder` class in `plugins/builders` which you can customize to transform any GraphQL API data into posts and other documents. Tested with [Strapi headless CMS](https://strapi.io).

**[Review](graphql.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/bridgetown-automations/graphql.rb
```
