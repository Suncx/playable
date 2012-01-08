require 'database_cleaner'
require Rails.root.join('spec', 'support/blueprints')

p '> clean up temp data...'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

FileUtils.rm_rf(File.join(Rails.root, 'public', 'uploads/*'))

require Rails.root.join('db/data/mandatory_seed')

p "> create admin user..."
User.make!(:admin, :email => 'admin@playab.net')
p "admin user was created."

p "> create blog posts"
30.times { Post.make!(:user => User.without_admin.sample, :category => Category.all.sample) }

p "> create post comments"
10.times { Comment.make!(:post => Post.all.sample) }

p "> create events..."
10.times { Event.make!(:user => User.all.sample) }

p "> create product..."
10.times { Product.make! }