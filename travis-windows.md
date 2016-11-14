Travis Build for Rails Projects developed under Windows
=========================================================

Problem: Gemfile.lock contains gems specific for windows platform,
won't work on Travis because builds there are run on Linux.

A simple workaround (as suggested here on Stackoverflow for Heroku:
  http://stackoverflow.com/questions/3642085/make-bundler-use-different-gems-for-different-platforms)

is to avoid bundler using the --deployment flag - see
http://bundler.io/v1.13/man/bundle-install.1.html#DEPLOYMENT-MODE

to do this, the install: script must be given manually to to travis:

install: bundle install --jobs=3 --retry=3

see https://docs.travis-ci.com/user/languages/ruby/#Dependency-Management
for documentation on the travis part.

This causes the dependencies being resolved matching to the current machine,
resulting in a different version beeing tested on travis than on
the development machine.
