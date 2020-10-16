              Fichero     >>>   Filebeat   >>>>   Logstash    >>>>              Elastic (Cluster)
        
Contenedor   APACHE_LOG                             5044                           9200 (todos)
                                                      ^                              ^
Maquina física                      >>              5044        >>   BC    >>      9201 (ingesta1)   
                                                                           >>      9202 (ingesta2) 
                                                                                   8080 (maestro1)


---------

Cluster ELASTICSEARCH
    Maestro1
    Maestro2
    Data1
    Data2
    >>> Ingesta1        |   Proxy (Balanceador)
    >>> Ingesta2        |   nginx, apache
    Coordinador1



Kubernetes
    Contenedores:           Servicio:
        Maestro1
        Maestro2
        Data1
        Data2
        Ingesta1        |   INGESTA:    IP:PUERTO
        Ingesta2        |   (balanceador de carga)

        Coordinador1    |   CONSULTA:   IP:PUERTO
        
        
        
        
