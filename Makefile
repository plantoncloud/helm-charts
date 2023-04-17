.PHONY: build
build:
	rm -rf build
	mkdir -p build
	helm package k8s-cert-cluster-issuer --destination build
	helm package planton-cloud-kube-agent --destination build

.PHONY: templates
templates:
	rm -rf build/templates/
	mkdir -p build/templates/
	helm template k8s-cert-cluster-issuer --output-dir build/templates/k8s-cert-cluster-issuer
	helm template planton-cloud-kube-agent --output-dir build/templates/planton-cloud-kube-agent
