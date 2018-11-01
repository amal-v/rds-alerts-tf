
|         Available Metrics          |Description                                                                                                                        | Eval time  |     Threshold     |Period   |  Statistic       | 
|-------------------|------------------------------------------------------------------------------------------------------------------------|---|----------|---|---------| 
| CPUUtilization    | The percentage of allocated EC2 compute units that are currently in use on the instance.                               | 5 | 80%      | 1 | Average | 
| DiskReadOps       | Completed read operations from all instance store volumes available to the instance in a specified period of time.     | 5 | 150      | 1 | Average | 
| DiskWriteOps      | Completed write operations to all instance store volumes available to the instance in a specified period of time.      | 5 | 150      | 1 | Average | 
| NetworkIn         | The number of bytes received on all network interfaces by the instance.                                                | 5 | 50MB/sec | 1 | Average | 
| NetworkOut        | The number of bytes sent out on all network interfaces by the instance.                                                | 5 | 50MB/sec | 1 | Average | 
| StatusCheckFailed | Reports whether the instance has passed both the instance status check and the system status check in the last minute. | 5 | 1        | 1 | Maximum | 


