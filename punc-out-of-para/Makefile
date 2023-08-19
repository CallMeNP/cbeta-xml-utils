xmlFiles:=$(shell find ../../../cbeta/xml-p5a/T -name '*.xml')
tmpFiles:=$(xmlFiles:../../../cbeta/xml-p5a/%.xml=tmp/%.xml)

tmp/%.xml:../../../cbeta/xml-p5a/%.xml
	mkdir -p $$(dirname $@)
	saxonb-xslt -xsl:filter.xsl -s:$< | grep -v '\(^<lb.*>$$\)\|\(^$$\)' > $@ || true

tmp: $(tmpFiles)

reports.xml: $(tmpFiles)
	echo "<list>" > reports.xml
	find tmp -type f -not -empty  | xargs -I {} cat {} |sed -e 's/xmlns="[^"]*"//' >> reports.xml
	echo "</list>" >> reports.xml
