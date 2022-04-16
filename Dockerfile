FROM ubuntu
LABEL name="dash-to-dock build container"
RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm
RUN npm i dart-sass
RUN apt install -y make

# make: glib-compile-schemas: Command not found
RUN apt install -y libglib2.0-dev
# make: sassc: Command not found
RUN apt install -y sassc
# make: msgfmt: Command not found
RUN apt install -y gettext
