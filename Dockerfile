FROM corgibytes/ruby-1.9.3:latest
ARG user_id

RUN groupadd -g "${user_id}" user && useradd -d /home/user -m -u "${user_id}" -g "${user_id}" -G sudo -s /bin/bash user

RUN gem install rubyzip -v 1.3.0 && \
    gem install minitest -v 5.12.0 && \
    gem install nokogiri -v 1.6.8 && \
    gem install mechanize -v 2.7.4 && \
    gem install turbot -f && \
    gem install turbotlib
