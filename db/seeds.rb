# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Product.delete_all
Product.create!(title: 'Programming Ruby 3.3 (5th Edition)',
  description:
    %(<p>
      <em>The Pragmatic Programmers' Guide</em>
      Ruby is one of the most important programming languages in use for web
      development. It powers the Rails framework, which is the backing of some
      of the most important sites on the web. The Pickaxe Book, named for the
      tool on the cover, is the definitive reference on Ruby, a
      highly-regarded, fully object-oriented programming language. This updated
      edition is a comprehensive reference on the language itself, with a
      tutorial on the most important features of Ruby—including pattern
      matching and Ractors—and describes the language through Ruby 3.3.
    </p>),
  image_url: 'ruby5.jpg',
  price: 33.95)
# . . .
Product.create!(title: 'Rails Scales!',
  description:
    %(<p>
      <em>Practical Techniques for Performance and Growth</em>
      Rails doesn’t scale. So say the naysayers. They’re wrong. Ruby on Rails
      runs some of the biggest sites in the world, impacting the lives of
      millions of users while efficiently crunching petabytes of data. This
      book reveals how they do it, and how you can apply the same techniques to
      your applications. Optimize everything necessary to make an application
      function at scale: monitoring, product design, Ruby code, software
      architecture, database access, caching, and more. Even if your app may
      never have millions of users, you reduce the costs of hosting and
      maintaining it.
    </p>),
  image_url: 'cprpo.jpg',
  price: 30.95)
# . . .

Product.create!(title: 'Modern Front-End Development for Rails, Second Edition',
  description:
    %(<p>
      <em>Hotwire, Stimulus, Turbo, and React</em>
      Improve the user experience for your Rails app with rich, engaging
      client-side interactions. Learn to use the Rails 7 tools and simplify the
      complex JavaScript ecosystem. It’s easier than ever to build user
      interactions with Hotwire, Turbo, and Stimulus. You can add great
      front-end flair without much extra complication. Use React to build a
      more complex set of client-side features. Structure your code for
      different levels of client-side needs with these powerful options. Add to
      your toolkit today!
    </p>),
  image_url: 'nrclient2.jpg',
  price: 28.95)


