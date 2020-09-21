FROM node:8.11
ENV NG_HOME=/usr/ng/app \
    PATH=/usr/ng/app/node_modules/.bin:$PATH 

RUN npm install -g @angular/cli@^6.0.3 && \
    mkdir -p $NG_HOME

COPY ./package.json ./package-lock.json $NG_HOME/
WORKDIR $NG_HOME
RUN npm install
COPY . $NG_HOME

RUN chown -R 1001:0 $NG_HOME && \
    chmod -R 755 $NG_HOME

EXPOSE 4200

CMD ["hack/init.sh"]
