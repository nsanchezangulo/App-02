FROM php
COPY ./index.php ./
COPY ./d8389039-4b44-4cf9-83b2-7552df04a954.html ./
EXPOSE 3002
CMD [ "php", "-S", "0.0.0.0:3002" ]
