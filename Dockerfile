FROM asciidoctor/docker-asciidoctor:latest

COPY template/ /template/

RUN gem install asciidoctor-lists --no-document -i /usr/local/lib/ruby/gems/3.4.0 2>&1 || echo "Skipping gem install due to network/SSL issues. Using base image version."
