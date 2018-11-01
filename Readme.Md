
|         Available Metrics          |Description                                                                                                                        | Eval time  |     Threshold     |Period   |  Statistic       | 
|-------------------|------------------------------------------------------------------------------------------------------------------------|---|----------|---|---------| 
| NetworkTransmitThroughput | The outgoing (Transmit) network traffic on the DB instance. | 5 | 40 MB/s       | 1 | Average | Yes | 
| FreeableMemory            | The amount of available random access memory.               | 5 | 256MB         | 1 | Minimum | Yes | 
| WriteIOPS                 | The average number of disk I/O operations per second.       | 5 | 300 Count/Sec | 1 | Sum     | Yes | 
| FreeStorageSpace          | The amount of available storage space.                      | 10 | 10GB           | 1 | Minimum | Yes | 
| ReadIOPS                  | The average number of disk I/O operations per second.       | 5 | 300 Count/Sec | 1 | Sum     | Yes | 
| NetworkReceiveThroughput  | The incoming (Receive) network traffic on the DB instance.  | 5 | 40 MB/s       | 1 | Average | Yes | 
| DatabaseConnections       | The number of database connections in use.                  | 5 | 100           | 1 | Average | Yes | 
| CPUUtilization            | The percentage of CPU utilization.                          | 5 | 80%           | 1 | Average | Yes | 
