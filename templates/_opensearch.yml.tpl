{{- define "opensearch.yml" -}}
cluster.name: docker-cluster

# Bind to all interfaces because we don't know what IP address Docker will assign to us.
network.host: 0.0.0.0

# # minimum_master_nodes need to be explicitly set when bound on a public IP
# # set to 1 to allow single node clusters
# discovery.zen.minimum_master_nodes: 1

# Setting network.host to a non-loopback address enables the annoying bootstrap checks. "Single-node" mode disables them again.
discovery.type: single-node
{{- end }}