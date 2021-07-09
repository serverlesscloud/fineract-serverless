FINERACT_HOME ?= ..

generateRSAKeys:
	java -cp $(FINERACT_HOME)/fineract-cn-docker-compose/external_tools/lang-0.1.0-BUILD-SNAPSHOT.jar \
		org.apache.fineract.cn.lang.security.RsaKeyPairFactory SPRING > application-common.properties

startExternalTools:
	docker-compose up -f $(FINERACT_HOME)/fineract-cn-docker-compose/external_tools/docker-compose.yml -d

stopExternalTools:
	docker-compose stop -f $(FINERACT_HOME)/fineract-cn-docker-compose/external_tools/docker-compose.yml
