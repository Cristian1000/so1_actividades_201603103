# Actividad 4
Para realizar un systemd unit de tipo servicio para ejecutar un script que imprima un saludo y la fecha actual se deben realizar los siguientes pasos: 


## Pasos para la instalación y ejecucion del servicio

1.	Se crea un script que ejecutará la tarea especificada, este tiene el nombre de actividad4.sh dentro de la carpeta de code. El script se puede encontrar en Actividad 4.sh

A este script se le deben dar los permisos de ejecución con el siguiente comando:
    ```
    chmod +x Actividad 4.sh 
    ```

2. Se crea un archivo de systemd unit en la carpeta /etc/systemd/system/, con el respectivo nombre: actividad4.service. Este archivo servirá para ejecutar el servicio y se realiza con el siguiente comando:
    ```
    sudo nano /etc/systemd/system/saludar.service 
    ```  
3. Al ejecutar el comando, se abrirá el panel para editar el documento donde se podrá escribir la función del servicio con otros parámetros. Este código se encuentra en actividad4.service.

4. Ya modificado el servicio, se guarda y cierra el archivo presionando Ctrl + o y Ctrl + x, respectivamente.

5.Posteriormente, se recargan los servicios para que incluya el nuevo archivo creado con el comando:
    ```
    sudo systemctl daemon-reload   
    ``` 

6. Se inicia el servicio con el comando:
    ```
    sudo systemctl start Actividad 4.service   
    ```

7. Finalmente, para verificar el estado y el mensaje después de la ejecución del servicio, se utiliza el comando:

    ```
    sudo systemctl status Actividad 4.service    
    ```
