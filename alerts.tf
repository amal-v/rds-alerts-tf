#RDS
resource "aws_cloudwatch_metric_alarm" "rds_networktransmitthroughput" {
  alarm_name          = "${var.project}-${var.environment}_rds_network_transmit_throughput"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "NetworkTransmitThroughput"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Average"
  threshold           = "40"
  unit                = "Megabytes/Second"
  alarm_description   = "The outgoing (Transmit) network traffic on the DB instance is more than 40 MB/s."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_freeablememory" {
  alarm_name          = "${var.project}-${var.environment}_rds_freeable_memory"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "FreeableMemory"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Minimum"
  threshold           = "256"
  unit                = "Megabytes"
  alarm_description   = "The amount of available random access memory is less than 256 MB."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_writeiops" {
  alarm_name          = "${var.project}-${var.environment}_rds_write_iops"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "WriteIOPS"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Average"
  threshold           = "300"
  unit                = "Count/Second"
  alarm_description   = "The average number of disk I/O operations per second is more than 300."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_freestoragespace" {
  alarm_name          = "${var.project}-${var.environment}_rds_free_storage_space"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "FreeStorageSpace"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Minimum"
  threshold           = "5"
  unit                = "Gigabytes"
  alarm_description   = "The amount of available storage space is less than 5GB."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_readiops" {
  alarm_name          = "${var.project}-${var.environment}_rds_read_iops"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "ReadIOPS"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Sum"
  threshold           = "300"
  unit                = "Count/Second"
  alarm_description   = "The average number of disk I/O operations per second is more than 300."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_networkreceivethroughput" {
  alarm_name          = "${var.project}-${var.environment}_rds_network_receive_throughput"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "NetworkReceiveThroughput"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Average"
  threshold           = "40"
  unit                = "Megabytes/Second"
  alarm_description   = "The incoming (Receive) network traffic on the DB instance is more than 40MB/s."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_databaseconnections" {
  alarm_name          = "${var.project}-${var.environment}_rds_database_connections"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "DatabaseConnections"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Average"
  threshold           = "100"
  unit                = "Count/Second"
  alarm_description   = "The average number of database connections in use is more than 100 per second."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}

resource "aws_cloudwatch_metric_alarm" "rds_cpuutilization" {
  alarm_name          = "${var.project}-${var.environment}_rds_cpu_utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "5"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "The percentage of CPU utilization is more than 80 Percent."
  treat_missing_data  = "notBreaching"

  ok_actions = [
    "${var.sns_arn}",
  ]

  alarm_actions = [
    "${var.sns_arn}",
  ]

  dimensions {
    "DBInstanceIdentifier" = "${var.rds_instance_identifier}"
  }
}
