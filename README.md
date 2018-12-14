This is the source code for my personal website at leandrobighetti.netlify.com

# Build

Requirements:

- ruby 2.4.2
- rubygem

To build it locally:

- gem install jekyll
- jekyll serve

# Deploy

Deploy is happening automatically on netlify from `master` branch to [leandrobighetti.netlify.com](https://leandrobighetti.netlify.com)

No trickery, netlify is only running `jekyll build` and deploying the generated `_site` folder.