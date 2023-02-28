## Problema

El problema que muestra es es que al recargar muestra un error 404, esto es debido a que el Nginx no esta correctamente configurado el cual consiste en que no maneka correctamente las ubicaicones de los archivos de react.

## Solución

editar el archivo de Nginx y colocarlo en su ubicacion correcta.

    location / {
    try_files $uri $uri/ /index.html;
    }

ademas se modifico el dockerfile 

     COPY nginx.conf /etc/nginx/conf.d/default.conf
