.class public Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;
.super Ljava/lang/Object;
.source "AndroidDeviceInfo.java"


# static fields
.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field public static final DEVICEINFO_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AndroidDeviceInfo"

.field private static cpuInited:Z

.field private static hardware:Ljava/lang/String;

.field private static mCpuAbi:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static mCpuName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static mMaxCpuFreq:I

.field private static mMemory:J

.field private static mMinCpuFreq:I

.field private static mNumCores:I

.field private static memoryInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sput-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo$1;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractValue([BI)I
    .locals 3

    .line 499
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 500
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 503
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getCPUABI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 389
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->initCPU()V

    .line 390
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method private static getCPUABIImpl()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 397
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "getprop ro.product.cpu.abi"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "AndroidDeviceInfo"

    const-string v1, "getCPU ABI failed !"

    .line 399
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCPUMaxFreqKHz()I
    .locals 1

    .line 201
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->initCPU()V

    .line 202
    sget v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mMaxCpuFreq:I

    return v0
.end method

.method private static getCPUMaxFreqKHzImpl()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 209
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getNumberOfCPUCoresImpl()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x80

    new-array v6, v4, [B

    .line 215
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 217
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    const/4 v5, 0x0

    .line 220
    :goto_1
    aget-byte v8, v6, v5

    invoke-static {v8}, Ljava/lang/Character;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ge v5, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 223
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 226
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 239
    :catch_1
    :try_start_4
    throw v0

    :catch_2
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_5

    .line 243
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v2, "cpu MHz"

    .line 245
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    mul-int/lit16 v2, v2, 0x3e8

    if-lez v2, :cond_4

    move v3, v2

    .line 253
    :cond_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 258
    :catch_3
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_4
    :cond_5
    :goto_3
    move v1, v3

    :catch_5
    return v1
.end method

.method public static getCPUMinFreqKHz()I
    .locals 1

    .line 273
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->initCPU()V

    .line 274
    sget v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mMinCpuFreq:I

    return v0
.end method

.method private static getCPUMinFreqKHzImpl()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 280
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getNumberOfCPUCoresImpl()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x80

    new-array v6, v4, [B

    .line 286
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 288
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    const/4 v5, 0x0

    .line 291
    :goto_1
    aget-byte v8, v6, v5

    invoke-static {v8}, Ljava/lang/Character;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ge v5, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 294
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ne v3, v1, :cond_1

    .line 296
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_1

    .line 297
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 300
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v3, :cond_2

    .line 301
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 314
    :catch_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 309
    :catch_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :catch_2
    return v1

    :catch_3
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ne v3, v1, :cond_6

    .line 318
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    const-string v2, "cpu MHz"

    .line 320
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    mul-int/lit16 v2, v2, 0x3e8

    if-lez v2, :cond_5

    move v3, v2

    .line 328
    :cond_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 333
    :catch_4
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_5
    :cond_6
    :goto_3
    move v1, v3

    :catch_6
    return v1
.end method

.method private static getCoresFromCPUFileList()I
    .locals 2

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private static getCoresFromFileInfo(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 140
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 144
    invoke-static {v0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCoresFromFileString(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 156
    :catch_2
    :cond_0
    throw p0

    :catch_3
    nop

    :goto_1
    const/4 p0, -0x1

    if-eqz v0, :cond_1

    .line 151
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    return p0
.end method

.method private static getCoresFromFileString(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "0-[\\d]+$"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static final getCpuTemperature()D
    .locals 4

    const/4 v0, 0x0

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/sys/devices/virtual/thermal/thermal_zone0/temp"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    int-to-double v0, v0

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_2
    :goto_0
    :try_start_3
    const-string v1, "AndroidDeviceInfo"

    const-string v2, "getCpuTemperature  failed !"

    .line 88
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_0

    .line 93
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    return-wide v1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 98
    :catch_4
    :cond_1
    throw v0
.end method

.method public static getDeviceCpuName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 349
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->initCPU()V

    .line 350
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mCpuName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceCpuNameImpl()Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, ":"

    const-string v1, "/proc/cpuinfo"

    const/4 v2, 0x0

    .line 359
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 361
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "Hardware"

    .line 362
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 364
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 376
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0

    .line 368
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 374
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v2

    .line 370
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    .line 374
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_3

    .line 374
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 376
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    :cond_3
    :goto_4
    throw v0
.end method

.method public static getHardwareVendorName()Ljava/lang/String;
    .locals 1

    .line 516
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public static getNumberOfCPUCores()I
    .locals 1

    .line 112
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->initCPU()V

    .line 113
    sget v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mNumCores:I

    return v0
.end method

.method private static getNumberOfCPUCoresImpl()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "/sys/devices/system/cpu/possible"

    .line 119
    invoke-static {v1}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "/sys/devices/system/cpu/present"

    .line 121
    invoke-static {v1}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-ne v1, v0, :cond_1

    .line 124
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCoresFromCPUFileList()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move v0, v1

    :catch_0
    :goto_0
    return v0
.end method

.method public static getOsVersion()I
    .locals 1

    .line 521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getTotalMemory()J
    .locals 2

    .line 413
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->initMemory(Landroid/content/Context;)V

    .line 414
    sget-wide v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mMemory:J

    return-wide v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 2

    .line 419
    invoke-static {p0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->initMemory(Landroid/content/Context;)V

    .line 420
    sget-wide v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mMemory:J

    return-wide v0
.end method

.method private static getTotalMemoryImpl(Landroid/content/Context;)J
    .locals 4

    if-eqz p0, :cond_0

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 426
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 427
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 428
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 430
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0

    .line 437
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    const-string v0, "/proc/meminfo"

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "MemTotal"

    .line 439
    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    .line 444
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 449
    :catch_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static initCPU()V
    .locals 7

    .line 46
    sget-boolean v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->cpuInited:Z

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-boolean v1, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->cpuInited:Z

    if-nez v1, :cond_0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 50
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getNumberOfCPUCoresImpl()I

    move-result v3

    sput v3, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mNumCores:I

    .line 51
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUMaxFreqKHzImpl()I

    move-result v3

    sput v3, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mMaxCpuFreq:I

    .line 52
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUMinFreqKHzImpl()I

    move-result v3

    sput v3, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mMinCpuFreq:I

    .line 53
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUABIImpl()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mCpuAbi:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getDeviceCpuNameImpl()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mCpuName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 55
    sput-boolean v3, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->cpuInited:Z

    const-string v3, "AndroidDeviceInfo"

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init CPU info time cost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private static initMemory(Landroid/content/Context;)V
    .locals 6

    .line 63
    sget-boolean v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->memoryInited:Z

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-boolean v1, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->memoryInited:Z

    if-nez v1, :cond_0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 67
    invoke-static {p0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getTotalMemoryImpl(Landroid/content/Context;)J

    move-result-wide v3

    sput-wide v3, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->mMemory:J

    const/4 p0, 0x1

    .line 68
    sput-boolean p0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->memoryInited:Z

    const-string p0, "AndroidDeviceInfo"

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init memory info time cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static isHardWareVendorDimensity()Z
    .locals 2

    .line 566
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    const-string v1, "^mt6[89].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHardWareVendorHisi()Z
    .locals 2

    .line 533
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    const-string v1, "kirin[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHardWareVendorMediaTek()Z
    .locals 2

    .line 540
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    const-string v1, "mt[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    const-string v1, "m[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isHardWareVendorQualcomm()Z
    .locals 2

    .line 526
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHardWareVendorSprd()Z
    .locals 2

    .line 573
    sget-object v0, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->hardware:Ljava/lang/String;

    const-string v1, "sp[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 7

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 468
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_5

    .line 470
    aget-byte v3, v0, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_4

    .line 471
    :cond_0
    aget-byte v3, v0, v2

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_4

    sub-int v4, v3, v2

    .line 475
    aget-byte v5, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_2

    .line 479
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    .line 480
    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->extractValue([BI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    return v1
.end method
