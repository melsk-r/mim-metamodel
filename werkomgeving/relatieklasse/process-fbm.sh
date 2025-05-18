# Fetch libraries
if [ ! -d "../libs" ]; then
  mkdir -v ../libs
fi
if [ ! -f "../libs/rdf2xml.jar" ]; then
  curl -L -k https://github.com/architolk/rdf2xml/releases/download/v1.1.0/rdf2xml.jar -o ../libs/rdf2xml.jar
fi
if [ ! -f "../libs/fbm2graphml.xsl" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/rdf2xml/refs/heads/main/fbm2graphml.xsl -o ../libs/fbm2graphml.xsl
fi
if [ ! -f "../libs/fbm2mim.yaml" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/mimtools/refs/heads/main/fbm2mim.yaml -o ../libs/fbm2mim.yaml
fi
if [ ! -f "../libs/mim2graphml.xsl" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/mimtools/refs/heads/main/mim2graphml.xsl -o ../libs/mim2graphml.xsl
fi

# Make graphml diagram from fbm
java -jar ../libs/rdf2xml.jar belang-fbm.ttl belang-fbm.graphml ../libs/fbm2graphml.xsl
# Convert FBM to MIM
java -jar ../libs/rdf2rdf.jar -i belang-fbm.ttl -o belang-mim-ld.ttl -c ../libs/fbm2mim.yaml
# Make graphml diagram from mim
java -jar ../libs/rdf2xml.jar belang-mim-ld.ttl belang-mim-ld.graphml ../libs/mim2graphml.xsl add belang-mim-ld-edited.graphml
