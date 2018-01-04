FROM java:jre-alpine

RUN apk add --update --no-cache \
	 unzip \
	 curl

RUN curl -L https://nlp.stanford.edu/software/stanford-corenlp-full-2017-06-09.zip -o stanford-corenlp-full.zip

RUN unzip stanford-corenlp-full.zip && \
	rm stanford-corenlp-full.zip

WORKDIR stanford-corenlp-full-2017-06-09

RUN curl -L https://nlp.stanford.edu/software/stanford-german-corenlp-2017-06-09-models.jar -o stanford-german-corenlp-2017-06-09-models.jar

RUN export CLASSPATH="`find . -name '*.jar'`"

ENV PORT 9000
EXPOSE $PORT

CMD java -cp "*" -mx4g edu.stanford.nlp.pipeline.StanfordCoreNLPServer
