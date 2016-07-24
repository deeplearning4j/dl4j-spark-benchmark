JARARGS="-tempPath file:/C:/Temp/MLPSparkTestSmall/Temp/ -resultPath file:/C:/Temp/MLPSparkTestSmall/Results/ -useSparkLocal true"
JARARGS="$JARARGS -dataLoadingMethods SparkBinaryFiles Parallelize -numTestFiles 192 -numParams 100000 -dataSize 128"
JARARGS="$JARARGS -miniBatchSizePerWorker 32 -saveUpdater true -repartition Always -repartitionStrategy SparkDefault"
JARARGS="$JARARGS -workerPrefetchNumBatches 0"
java -Xms16G -Xmx16G -cp dl4j-spark-benchmark.jar org.deeplearning4j.train.RunTrainingTests %JARARGS%