FROM ubuntu:22.04

RUN apt update && apt install -y \
  gconf-service libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libcairo2 \
  libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 \
  libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 \
  libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
  libxcursor1 libxdamage1 libxss1 libxtst6 libappindicator1 libnss3 libasound2 \
  libatk1.0-0 libc6 ca-certificates fonts-liberation lsb-release xdg-utils wget \
  libgbm1 xz-utils

RUN adduser --no-create-home --disabled-password --gecos "" chrome
WORKDIR /home/chrome
COPY --chown=root:chrome chromium.tar.xz flag.txt visit.sh flag_printer ./
RUN tar xf chromium.tar.xz
RUN chown -R root:chrome ./
RUN sed -i "s/hitcon{XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX}/$(cat flag.txt)/g" flag_printer
RUN rm flag.txt

RUN chmod 750 chromium/chrome \
  && chmod 110 flag_printer \
  && chmod g+s chromium/chrome

USER chrome
ENTRYPOINT ["./visit.sh"]
