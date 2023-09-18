.class public Lcom/netease/yunxin/lite/util/SystemInformation;
.super Ljava/lang/Object;
.source "SystemInformation.java"


# static fields
.field private static sDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbi()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUABI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 5

    .line 113
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 119
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 124
    :try_start_1
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "un_know_app_name"

    :goto_2
    return-object v2
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpuFreq()I
    .locals 1

    .line 140
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUMaxFreqKHz()I

    move-result v0

    return v0
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getDeviceCpuName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 4

    .line 83
    sget-object v0, Lcom/netease/yunxin/lite/util/SystemInformation;->sDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/netease/yunxin/lite/util/SystemInformation;->sDeviceId:Ljava/lang/String;

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->getInstance()Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;

    move-result-object v0

    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_id"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->getInstance()Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;

    move-result-object v1

    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/netease/yunxin/lite/util/SharedPreferencesUtil;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    sput-object v0, Lcom/netease/yunxin/lite/util/SystemInformation;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getMemory()J
    .locals 2

    .line 135
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNumberOfCPUCores()I
    .locals 1

    .line 102
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getNumberOfCPUCores()I

    move-result v0

    return v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 1

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static isEmulator()Z
    .locals 2

    .line 145
    invoke-static {}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getSingleInstance()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    move-result-object v0

    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkIsRunningInEmulator(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSupportH264HWDecode()Z
    .locals 2

    .line 155
    invoke-static {}, Lcom/netease/lava/webrtc/device/HardwareLevel;->level()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->hasH264HwDecoder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportH264HWEncode()Z
    .locals 2

    .line 150
    invoke-static {}, Lcom/netease/lava/webrtc/device/HardwareLevel;->level()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->hasH264HwEncoder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
