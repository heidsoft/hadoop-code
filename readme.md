
$ bin/hadoop com.sun.tools.javac.Main WordCount.java

$ jar cf wc.jar WordCount*.class

/usr/local/hadoop-2.8.0/bin/hadoop jar  wc.jar WordCount /tmp/wordcount/input /tmp/wordcount/output

/usr/local/pig-0.17.0/bin/pig -x mapreduce pigdemo.pig
