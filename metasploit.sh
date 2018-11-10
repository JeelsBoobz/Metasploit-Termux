apt update && apt -y upgrade
pkg install autoconf bison clang coreutils curl findutils git apr apr-util libffi-dev libgmp-dev libpcap-dev postgresql-dev readline-dev libsqlite-dev openssl-dev libtool libxml2-dev libxslt-dev ncurses-dev pkg-config wget make ruby-dev libgrpc-dev termux-tools ncurses ncurses-utils libsodium-dev termux-exec
git clone https://github.com/rapid7/metasploit-framework
cd metasploit-framework
gem install bundler
gem install nokogiri -- --using-system-libraries
bundle install -j5
$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
# cd $HOME/metasploit-framework/config
# curl -LO https://Auxilus.github.io/database.yml
# mkdir -p $PREFIX/var/lib/postgresql
# initdb $PREFIX/var/lib/postgresql
# pg_ctl -D $PREFIX/var/lib/postgresql start
# createuser msf
# createdb msf_database
