docker run \
    --name filebeat \
    --rm \
    -it \
    -v "/home/ubuntu/environment/curso/beats/filebeat/$1:/usr/share/filebeat/filebeat.yml:ro" \
    -v "/home/ubuntu/environment/curso/logstash/data:/data" \
    docker.elastic.co/beats/filebeat:7.9.2
