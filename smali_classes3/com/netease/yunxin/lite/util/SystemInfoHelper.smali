.class public Lcom/netease/yunxin/lite/util/SystemInfoHelper;
.super Ljava/lang/Object;
.source "SystemInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemInfoHelper"

.field private static batteryManager:Landroid/os/BatteryManager;

.field private static batteryReceiver:Landroid/content/BroadcastReceiver;

.field private static batteryTemperature:I

.field private static batteryVoltage:I

.field private static isCharging:Z

.field private static mPreProcessCpuTime:F

.field private static mPreTotalAndIdle:[J

.field private static sActivityManager:Landroid/app/ActivityManager;

.field private static sMaxAppMemory:J

.field private static sMemPid:[I

.field private static sMyPid:I

.field private static sProcPidStatPath:Ljava/lang/String;

.field private static sTotalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 33
    sput p0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryVoltage:I

    return p0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 33
    sput p0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryTemperature:I

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 33
    sput-boolean p0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->isCharging:Z

    return p0
.end method

.method private static getAppCpuTime()J
    .locals 7

    const/4 v0, 0x0

    .line 318
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sProcPidStatPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    .line 321
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0xe

    aget-object v4, v0, v4

    .line 322
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0xf

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v4, 0x10

    aget-object v0, v0, v4

    .line 323
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v2, v4

    .line 328
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 329
    throw v0

    :catch_1
    :goto_1
    const-wide/16 v1, 0x1

    .line 328
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v1
.end method

.method public static getAppMaxMemory()J
    .locals 6

    const-wide/16 v0, 0x0

    .line 255
    :try_start_0
    sget-wide v2, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sMaxAppMemory:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 256
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    sput-wide v2, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sMaxAppMemory:J

    .line 258
    :cond_0
    sget-wide v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sMaxAppMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static getAppMemorySize()[I
    .locals 5

    const/4 v0, 0x4

    .line 191
    :try_start_0
    sget-object v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sActivityManager:Landroid/app/ActivityManager;

    sget-object v2, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sMemPid:[I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-array v3, v0, [I

    .line 192
    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    aput v4, v3, v2

    const/4 v2, 0x1

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    aput v4, v3, v2

    const/4 v2, 0x2

    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    aput v4, v3, v2

    const/4 v2, 0x3

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    aput v1, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    new-array v0, v0, [I

    .line 195
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getBatteryInfo()[I
    .locals 9

    const/4 v0, 0x5

    .line 115
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryManager:Landroid/os/BatteryManager;

    if-nez v1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v1, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 122
    sget-object v2, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v2, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    new-array v8, v0, [I

    aput v1, v8, v7

    aput v2, v8, v6

    .line 123
    sget v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryVoltage:I

    aput v1, v8, v5

    sget v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryTemperature:I

    aput v1, v8, v3

    sget-boolean v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->isCharging:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    aput v6, v8, v4

    return-object v8

    :cond_2
    :goto_1
    new-array v1, v0, [I

    aput v7, v1, v7

    aput v7, v1, v6

    aput v7, v1, v5

    aput v7, v1, v3

    aput v7, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-array v0, v0, [I

    .line 127
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getCpuRate()[F
    .locals 9

    .line 269
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getTotalCpuTime()[J

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 273
    aget-wide v3, v0, v2

    long-to-float v3, v3

    const/4 v4, 0x1

    .line 274
    aget-wide v5, v0, v4

    long-to-float v0, v5

    .line 275
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getAppCpuTime()J

    move-result-wide v5

    long-to-float v5, v5

    const-wide/16 v6, 0x168

    .line 276
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 277
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getTotalCpuTime()[J

    move-result-object v6

    if-nez v6, :cond_1

    return-object v1

    .line 281
    :cond_1
    aget-wide v7, v6, v2

    long-to-float v1, v7

    .line 282
    aget-wide v7, v6, v4

    long-to-float v6, v7

    .line 283
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getAppCpuTime()J

    move-result-wide v7

    long-to-float v7, v7

    sub-float/2addr v7, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v7, v7, v5

    sub-float/2addr v1, v3

    div-float/2addr v7, v1

    sub-float/2addr v6, v0

    sub-float v0, v1, v6

    mul-float v0, v0, v5

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v7, v1, v2

    aput v0, v1, v4

    return-object v1
.end method

.method public static getCpuRateNoSleep()[I
    .locals 11

    const/4 v0, 0x2

    .line 145
    :try_start_0
    sget-object v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->mPreTotalAndIdle:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 146
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getCpuRate()[F

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getTotalCpuTime()[J

    move-result-object v4

    sput-object v4, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->mPreTotalAndIdle:[J

    .line 148
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getAppCpuTime()J

    move-result-wide v4

    long-to-float v4, v4

    sput v4, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->mPreProcessCpuTime:F

    if-eqz v1, :cond_0

    new-array v4, v0, [I

    .line 150
    aget v5, v1, v3

    float-to-int v5, v5

    aput v5, v4, v3

    aget v1, v1, v2

    float-to-int v1, v1

    aput v1, v4, v2

    return-object v4

    :cond_0
    new-array v1, v0, [I

    aput v3, v1, v3

    aput v3, v1, v2

    return-object v1

    .line 155
    :cond_1
    aget-wide v4, v1, v3

    long-to-float v4, v4

    .line 156
    aget-wide v5, v1, v2

    long-to-float v1, v5

    .line 157
    sget v5, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->mPreProcessCpuTime:F

    .line 159
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getTotalCpuTime()[J

    move-result-object v6

    if-nez v6, :cond_2

    new-array v1, v0, [I

    aput v3, v1, v3

    aput v3, v1, v2

    return-object v1

    .line 164
    :cond_2
    aget-wide v7, v6, v3

    long-to-float v7, v7

    .line 165
    aget-wide v8, v6, v2

    long-to-float v8, v8

    .line 166
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->getAppCpuTime()J

    move-result-wide v9

    long-to-float v9, v9

    sub-float v5, v9, v5

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v5, v5, v10

    sub-float/2addr v7, v4

    div-float/2addr v5, v7

    sub-float/2addr v8, v1

    sub-float v1, v7, v8

    mul-float v1, v1, v10

    div-float/2addr v1, v7

    .line 174
    sput-object v6, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->mPreTotalAndIdle:[J

    .line 175
    sput v9, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->mPreProcessCpuTime:F

    new-array v4, v0, [I

    float-to-int v5, v5

    aput v5, v4, v3

    float-to-int v1, v1

    aput v1, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    new-array v0, v0, [I

    .line 180
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getFreeMemorySize()J
    .locals 4

    .line 206
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 207
    sget-object v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 208
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    .line 209
    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getTotalCpuTime()[J
    .locals 12

    const/4 v0, 0x0

    .line 298
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/stat"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 301
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x2

    .line 302
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x3

    aget-object v9, v2, v9

    .line 303
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/4 v9, 0x4

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/4 v9, 0x6

    aget-object v9, v2, v9

    .line 304
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/4 v3, 0x7

    aget-object v3, v2, v3

    .line 305
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v7, v2

    new-array v2, v6, [J

    const/4 v3, 0x0

    aput-wide v7, v2, v3

    const/4 v3, 0x1

    aput-wide v4, v2, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_0
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 312
    throw v0

    :catch_0
    move-object v1, v0

    .line 311
    :catch_1
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static getTotalMemory()J
    .locals 6

    .line 221
    sget-wide v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sTotalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/meminfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 230
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, ""

    .line 231
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "MemTotal"

    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ":"

    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 234
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v3, " "

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 238
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sput-wide v3, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sTotalMemory:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    invoke-static {v2}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_1
    invoke-static {v2}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 243
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    throw v0

    :catch_1
    move-object v1, v0

    .line 242
    :catch_2
    :goto_2
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 243
    :goto_3
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 245
    sget-wide v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sTotalMemory:J

    return-wide v0
.end method

.method public static initial()V
    .locals 3

    :try_start_0
    const-string v0, "SystemInfoHelper"

    const-string v1, "RTCSystemInfoHelper initial."

    .line 52
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sActivityManager:Landroid/app/ActivityManager;

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sMyPid:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 55
    sput-object v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sMemPid:[I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sMyPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->sProcPidStatPath:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    sput-object v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryManager:Landroid/os/BatteryManager;

    .line 60
    new-instance v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper$1;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/util/SystemInfoHelper$1;-><init>()V

    sput-object v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->safeRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static release()V
    .locals 2

    const-string v0, "SystemInfoHelper"

    const-string v1, "RTCSystemInfoHelper release."

    .line 90
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/netease/yunxin/lite/util/SystemInfoHelper;->batteryReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static safeRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "receiver",
            "filter"
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 107
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
