# stanford corenlp with German using Docker

## build

```
docker build --tag corenlp .
```

## run

```
docker run -p 8080:9000 --name=corenlp corenlp
```

## usage examples

- English:

```
curl --data 'the quick brown fox jumped over the lazy dog.' 'http://localhost:8080/?properties={%22pipelineLanguage%22%3A%22en%22%2C%22annotators%22%3A%22tokenize%2Cssplit%2Cpos%2Cdepparse%22%2C%22outputFormat%22%3A%22conll%22}' -o -
```

- German:

```
curl --data 'Die Ärmel der Strickjacke haben am Armabschluss ein Bündchen.' 'http://localhost:8080/?properties={%22pipelineLanguage%22%3A%22de%22%2C%22annotators%22%3A%22tokenize%2Cssplit%2Cpos%2Cdepparse%22%2C%22outputFormat%22%3A%22conll%22}' -o -
```
