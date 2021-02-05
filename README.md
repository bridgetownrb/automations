**NOTE: This repo has been deprecated.** Starting with Bridgetown 0.19.2, popular automations are now bundled with the Bridgetown CLI directly. Read the [Bundled Configurations](https://www.bridgetownrb.com/docs/bundled-configurations) documentations to learn more.

----

# Bridgetown Automations

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

* [TailwindCSS](https://github.com/ParamagicDev/bridgetown-automation-tailwindcss)
* [Cypress Testing](https://github.com/ParamagicDev/bridgetown-automation-cypress)
* [NodeRunner (add data from Node.js scripts)](https://github.com/bridgetownrb/node-runner)
* [Cloudinary plugin](https://github.com/bridgetownrb/bridgetown-cloudinary)
* [Install Preact and React Hook Form (demo site)](https://github.com/jaredcwhite/example-bridgetown-preact)

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

### Automated Test Suite using Minitest

⚙️ Adds a basic test suite using Minitest and Rails DOM assertions for extremely fast verification of your output HTML.

🛠 **[Review](minitesting.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/automations/minitesting.rb
```

### Netlify TOML Configuration

⚙️ Adds a basic configuration to your site for use in Netlify deployments.

🛠 **[Review](netlify.rb)** or **Install:**

```
bundle exec bridgetown apply https://github.com/bridgetownrb/automations/netlify.rb
```
