set :application, "bigfatrails-book"
set :repository,  "git@github.com:bigfatrails/book.git"
set :branch, "re-release"
set :scm, :git
set :deploy_via, :copy
set :copy_strategy, :export

set :user, 'jrg'
set :group, 'jrg'

set :deploy_to, '/var/www/bfr'
set :use_sudo, false

role :web, "shadowfax.armyofminions.com"                          # Your HTTP server, Apache/etc
role :app, "shadowfax.armyofminions.com"                          # This may be the same as your `Web` server
role :db,  "shadowfax.armyofminions.com", :primary => true # This is where Rails migrations will run

namespace "bfr" do
  task :create_build_dirs, :roles => :app do
    run "cd #{release_path} && mkdir -p build/pdf build/html build/epub build/mobi public/ebooks"
  end

  task :link_images_dir, :roles => :app do
    run "cd #{release_path} && ln -s #{release_path}/source/images #{release_path}/build/html/images"
  end

  task :link_media_dir, :roles => :app do
    run "cd #{release_path} && ln -s #{shared_path}/media #{release_path}/public/media"
  end

  task :build_html, :roles => :app do
    run "cd #{release_path} && ./scripts/html.sh"
  end

  task :build_pdf, :roles => :app do
    run "cd #{release_path} && ./scripts/pdf.sh"
  end

  task :build_epub, :roles => :app do
    run "cd #{release_path} && ./scripts/epub.sh"
  end

  task :build_mobi, :roles => :app do
    run "cd #{release_path} && ./scripts/mobi.sh"
  end

  task :generate_ebook_page, :roles => :app do
    run "cd #{release_path} && ./scripts/generate_ebook_page.rb"
  end

  task :link_html_dir, :roles => :app do
    run "mkdir #{release_path}/public/book && cp #{release_path}/build/html/* #{release_path}/book -r"
  end
end

after 'deploy:update_code', 'bfr:create_build_dirs'
after 'deploy:update_code', 'bfr:link_images_dir'
after 'deploy:update_code', 'bfr:link_media_dir'
after 'deploy:update_code', 'bfr:build_html'
after 'deploy:update_code', 'bfr:build_pdf'
after 'deploy:update_code', 'bfr:build_epub'
after 'deploy:update_code', 'bfr:build_mobi'
after 'deploy:update_code', 'bfr:generate_ebook_page'
after 'deploy:update_code', 'bfr:link_html_dir'
