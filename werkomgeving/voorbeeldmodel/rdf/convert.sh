# Fetch libraries
if [ ! -d "../../libs" ]; then
  mkdir -v ../../libs
fi
if [ ! -f "../../libs/ea2rdf.jar" ]; then
  curl -L -k https://github.com/architolk/ea2rdf/releases/download/v1.2.4/ea2rdf.jar -o ../../libs/ea2rdf.jar
fi
if [ ! -f "../../libs/rdf2rdf.jar" ]; then
  curl -L -k https://github.com/architolk/rdf2rdf/releases/download/v1.5.0/rdf2rdf.jar -o ../../libs/rdf2rdf.jar
fi
if [ ! -f "../../libs/ea2mim.yaml" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/mimtools/refs/heads/main/ea2mim.yaml -o ../../libs/ea2mim.yaml
fi
if [ ! -f "../../libs/rdf2xml.jar" ]; then
  curl -L -k https://github.com/architolk/rdf2xml/releases/download/v1.1.0/rdf2xml.jar -o ../../libs/rdf2xml.jar
fi
if [ ! -f "../../libs/mim2graphml.xsl" ]; then
  curl -L -k https://raw.githubusercontent.com/architolk/mimtools/refs/heads/main/mim2graphml.xsl -o ../../libs/mim2graphml.xsl
fi

# Convert: .eap to ea.ttl
java -jar ../../libs/ea2rdf.jar -ea -e "../uml/EA15_Fietsenwinkel(mim1.2).EAP" > fietsenwinkel-eap.ttl
# Convert: ea to mim-ld.ttl
java -jar ../../libs/rdf2rdf.jar -i fietsenwinkel-eap.ttl -o fietsenwinkel-mim-ld.ttl -c ../../libs/ea2mim.yaml

# Make graphml diagram
java -jar ../../libs/rdf2xml.jar fietsenwinkel-mim-ld.ttl fietsenwinkel-mim-ld.graphml ../../libs/mim2graphml.xsl
