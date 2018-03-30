#!/bin/bash
APPNAME=$1
mkdir $APPNAME
cd $APPNAME
mkdir src
cd src
mkdir main
cd main
mkdir scala
cd ~/$APPNAME
echo "name := \"$APPNAME\"" > build.sbt
echo "version := \"0.1\"" >> build.sbt
echo "scalaVersion := \"2.11.8\"" >> build.sbt
echo "libraryDependencies += \"org.apache.spark\" %% \"spark-core\" % \"2.2.0\"" >> build.sbtcd src/main/scala
echo "import org.apache.spark.SparkContext" > $APPNAME.scala
echo "" >> $APPNAME.scala
echo "object $APPNAME {" >> $APPNAME.scala
echo "    def main(args: Array[String]) {" >> $APPNAME.scala
echo "        val sc=new SparkContext()" >> $APPNAME.scala
echo "    }" >> $APPNAME.scala
echo "}" >> $APPNAME.scalacd ~/$APPNAME
LAPPNAME=$(echo $APPNAME | sed 's/\(.*\)/\L\1/')
echo "gcloud dataproc jobs submit spark --cluster mycluster --region us-central1 --jar target/scala-2.11/${LAPPNAME}_2.11-0.1.jar" > run_spark.sh
chmod 755 run_spark.sh
