Hadoop Data Warehouse
Impala and HBase stack for slowly changing dimensions in Hive DW

Hadoop offers a scalable platform for storage, search and analytics at attractive price point. 
It offers an alternative to proprietary data warehouses at potentially lower price point with richer analytical capabilities. 
Hadoop HDFS and Hive are typically append-only filesystems, with no ability to modify the data after the writes.  
I have tested a stack that will accommodate slowly changing dimensions with ease when updates to those values come through from the 
source system; this will facilitate moving some of the functionality from expensive proprietary data warehouses to Hadoop stack.

