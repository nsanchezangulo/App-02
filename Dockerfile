FROM php
COPY ./index.php ./
COPY ./fc15c209-4fe3-4138-8ca4-8349f972f565 ./
EXPOSE 3002
CMD [ "php", "-S", "0.0.0.0:3002" ]
