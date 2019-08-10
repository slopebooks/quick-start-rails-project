FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y \
    build-essential nodejs vim \
    && rm -rf /var/lib/apt/lists*

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
# やれと言われたらやる、たまに↓をやれとエラーが出るっぽい
# RUN bundle config build.nokogiri --use-system-libraries
# -j3 = 並行処理3つ、--no-deployment = (--path=vendor/bundle path以下にgemインストール) && (--frozen Gemfile.lock変更不可)
RUN bundle install -j3 --no-deployment
ENV LANG C.UTF-8

# TODO: apt-utilsはdefaultっぽい、要確認

# localesは日本が必要になったらでいいや、とりあえずC.UTF-8で
# RUN locale-gen en_US.UTF-8
# ENV LANG en_US.UTF-8
# ENV LANGUAGE en_US:en
# ENV LC_ALL en_US.UTF-8

