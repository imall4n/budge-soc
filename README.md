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
