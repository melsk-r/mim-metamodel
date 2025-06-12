# Fetch libraries
if [ ! -d "../../libs" ]; then
  mkdir -v ../../libs
fi
if [ ! -f "../../libs/rdf2xml.jar" ]; then
  curl -L -k https://github.com/architolk/rdf2xml/releases/download/v1.1.0/rdf2xml.jar -o ../../libs/rdf2xml.jar
fi
if [ ! -f "../../libs/fbm2graphml.xsl" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/rdf2xml/refs/heads/main/fbm2graphml.xsl -o ../../libs/fbm2graphml.xsl
fi
if [ ! -f "../../libs/fbm2mim.yaml" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/mimtools/refs/heads/main/fbm2mim.yaml -o ../../libs/fbm2mim.yaml
fi
if [ ! -f "../../libs/mim2graphml.xsl" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/mimtools/refs/heads/main/mim2graphml.xsl -o ../../libs/mim2graphml.xsl
fi

# Make graphml diagram from fbm
java -jar ../../libs/rdf2xml.jar dienstbetrekking-fbm.ttl dienstbetrekking-fbm.graphml ../../libs/fbm2graphml.xsl
# Convert FBM to MIM (eenmalig gedaan, verder aangepast)
# java -jar ../../libs/rdf2rdf.jar -i dienstbetrekking-fbm.ttl -o dienstbetrekking-mim-ld.ttl -c ../../libs/fbm2mim.yaml
# Make graphml diagram from mim
java -jar ../../libs/rdf2xml.jar dienstbetrekking-mim-ld.ttl dienstbetrekking-mim-ld.graphml ../../libs/mim2graphml.xsl add dienstbetrekking-mim-ld-edited.graphml
