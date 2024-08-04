# budge-soc

https://opensecure.medium.com/your-own-free-security-incident-response-platform-in-minutes-bff8c25b45ac

TheHive-Wazuh
https://wazuh.com/blog/using-wazuh-and-thehive-for-threat-protection-and-incident-response/

https://documentation.wazuh.com/current/user-manual/capabilities/vulnerability-detection/configuring-scans.html

https://documentation.wazuh.com/current/user-manual/capabilities/log-data-collection/syslog.html

https://sgpfiles.netgate.com/mirror/downloads/

sudo nano /etc/netplan/01-netcfg.yaml

network:
    ethernets:
        enp0s3:
            dhcp4: no
            addresses:
              - 10.147.0.12/24
            gateway4: 10.147.0.10
            nameservers:
              addresses:
                - 1.1.1.1
                - 8.8.8.8
    version: 2
    

sudo netplay apply


https://raw.githubusercontent.com/olibavictor/OpenSoC/main/Wazuh/decoders/pfsense-custom-decoder.xml

https://raw.githubusercontent.com/olibavictor/OpenSoC/main/Wazuh/rules/2060-pfsense-rules.xml


https://pt.linkedin.com/pulse/monitorando-firewall-pfsense-com-o-wazuh-athus-fernandes

wget https://raw.githubusercontent.com/IamCarron/DVWA-Script/main/Install-DVWA.sh


hping3 --flood -S -V --rand-source IP

https://www.youtube.com/watch?v=xiJOzZQ3YwM

https://opensecure.medium.com/your-own-free-security-incident-response-platform-in-minutes-bff8c25b45ac

**DFIR-IRIS**
https://dfir-iris.org/
https://wazuh.com/blog/enhancing-incident-response-with-wazuh-and-dfir-iris-integration/

**TheHive**
apt-get update
apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-releasecurl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get updateapt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

docker run --rm -p 9000:9000 thehiveproject/thehive:latest


**SURICATA**
sudo vi /etc/suricata/suricata.yaml

Encontre a seção af-packet ou interface no suricata.yaml e configure a interface de rede que o Suricata deve monitorar. Por exemplo, se a interface for eth0:

yaml
af-packet:
  - interface: eth0
    cluster-id: 99
    cluster-type: cluster_flow
    defrag: yes

outputs:
  - syslog:
      enabled: yes
      facility: local1
      format:  "cef"
    
sudo suricata -T -c /etc/suricata/suricata.yaml -v

https://www.youtube.com/watch?v=NB_u9m-MMcY

https://www.elastic.co/guide/en/kibana/current/deb.html
https://stackoverflow.com/questions/74287799/kibana-error-kibana-server-is-not-ready-yet

https://www.youtube.com/watch?v=roJQ-7F_Vgg&t=450s

https://medium.com/@souzaw/elastic-security-coleta-de-logs-para-auditoria-no-pfsense-firewall-7118945bd3dc

Configuração ModSecurity
https://wazuh.com/blog/analyzing-modsecurity-events-with-wazuh/
https://www.inmotionhosting.com/support/server/apache/install-modsecurity-apache-module/
SecAuditLogFormat JSON
