###### mcollectd ######

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_RRDTOOL_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_rrdtool.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_CSV_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_csv.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_CPU_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_cpu.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_MEMORY_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_memory.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_DF_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_df.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_DISK_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_disk.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_FILECOUNT_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_filecount.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_COLLECTD_PING_ENABLE),y)
  MCOLLECTD_MODULES += mcollectd_ping.so
endif

###### outlog ######

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_OUTLOG_SERIAL),y)
  OUTLOG_MODULES += outlog_serial.so
endif

ifeq ($(CONFIG_TINATEST_SYS_GLOBAL_INFO_OUTLOG_MARKDOWN_ENABLE),y)
  OUTLOG_MODULES += outlog_markdown.so
endif
