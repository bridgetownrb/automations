# Bridgetown Automations

_COMING IN Bridgetown v0.15!_

A collection of helpful automation scripts that can be applied to [Bridgetown](https://www.bridgetownrb.com) websites.

Simply run `bundle exec bridgetown apply URL`, where URL is this repo URL along with the automation filename. You can also run an automation as part of a new site setup using `bundle exec bridgetown new mysite -a URL`.

If you already have an automation script you like to use, you can include additional automations by calling `apply_from_url`. For example:

```ruby
# my_script.rb

apply_from_url "https://github.com/bridgetownrb/automations/netlify.rb"
```

----

🖇 **To include your automation**, file a pull request and we'll review it for inclusion in this list!

## Other Repos:

In addition to the automations here, check out some other GitHub repos which include Bridgetown automations:

* [TailwindCSS](https://github.com/ParamagicDev/bridgetown-plugin-tailwindcss)
* [Cypress Testing](https://github.com/ParamagicDev/bridgetown-automation-cypress)
* [NodeRunner (add data from Node.js scripts)](https://github.com/bridgetownrb/node-runner)
* [Cloudinary plugin](https://github.com/bridgetownrb/bridgetown-cloudinary)

## List of Automations:

### Swup.js Page Transitions

⚡️ Adds [Swup](https://swup.js.org) for fast animated page transitions that make your site feel modern and cool. (If you've used Turbolinks in the past, you'll love Swup!)

🛠 **[Review](swup.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/automations/swup.rb
```

### PurgeCSS Post-Build Hook

🧼 Adds a builder plugin which runs [PurgeCSS](https://purgecss.com) against the output HTML + frontend Javascript and produces a much smaller CSS output bundle for sites which use large CSS frameworks.

🛠 **[Review](purgecss.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/automations/purgecss.rb
```

### Netlify TOML Configuration

⚙️ Adds a basic configuration to your site for use in Netlify deployments.

🛠 **[Review](netlify.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/automations/netlify.rb
```

### GraphQL Builder

🔎 Adds the [Graphlient](http://github.com/ashkan18/graphlient) gem and creates a `GraphqlBuilder` class in `plugins/builders` which you can customize to transform any GraphQL API data into posts and other documents. Tested with [Strapi headless CMS](https://strapi.io).

🛠 **[Review](graphql.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/automations/graphql.rb
```
