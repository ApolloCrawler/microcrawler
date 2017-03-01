#! /bin/sh

# cAdvisor
# fleetctl submit cadvisor.service
# fleetctl start cadvisor.service

# InfluxDB for Heapster
# fleetctl submit heapster-influxdb.service
# fleetctl start heapster-influxdb

# Start Heapster
# fleetctl submit heapster.service
# fleetctl start heapster

# Start grafana
# fleetctl submit grafana.service
# fleetctl start grafana.service

# Couchbase
# fleetctl submit couchbase4@.service
# fleetctl submit couchbase4-discovery@.service
# fleetctl start couchbase4@1 couchbase4-discovery@1

# ElasticSearch
# fleetctl submit elasticsearch@.service
# fleetctl submit elasticsearch-discovery@.service
# fleetctl start elasticsearch@1 elasticsearch-discovery@1

# Map of Facts
# fleetctl submit mapoffacts@.service
# fleetctl submit mapoffacts-discovery@.service
# fleetctl start mapoffacts@1 mapoffacts-discovery@1
