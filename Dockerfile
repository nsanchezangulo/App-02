FROM php
COPY ./index.php ./
EXPOSE 3002
CMD [ "php", "-S", "0.0.0.0:3002" ]
