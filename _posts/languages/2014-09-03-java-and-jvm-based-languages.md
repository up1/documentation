---
title: Java and JVM based languages
tags:
  - java
  - scala
  - languages
categories:
  - languages
---
We have **Java 7 (openjdk-7-jdk)** installed on our virtual machines. **JAVA_HOME** is set to **/usr/lib/jvm/java-7-openjdk-amd64/**

## Build Tools
The following tools are preinstalled in our virtual machine. You can add them to your setup or test commands to start your build

## ant (1.9.0)

~~~shell
ant test
~~~

## maven (3.0.5)

~~~shell
mvn test
~~~

## gradle (1.5)

~~~shell
gradle test
~~~

## sbt (0.12.1)

~~~shell
sbt test
~~~

## leiningen (2.1.3)

~~~shell
lein test
~~~

## JVM based languages
Scala , Clojure, Groovy and other JVM based languages should be running fine on our systems as well. Let us know if you find something that doesn't work as expected
