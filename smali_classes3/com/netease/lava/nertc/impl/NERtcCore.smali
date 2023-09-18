.class public Lcom/netease/lava/nertc/impl/NERtcCore;
.super Lcom/netease/lava/nertc/sdk/NERtcEx;
.source "NERtcCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/impl/NERtcCore$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NERtcImpl"


# instance fields
.field private audioProfile:I

.field private audioScenario:I

.field private mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field private mCallbackDirectBuffer:Ljava/nio/ByteBuffer;

.field private final mChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigEngineParam:Ljava/lang/String;

.field private mEglBase:Lcom/netease/lava/webrtc/EglBase;

.field private mEglBaseVideoCallback:Lcom/netease/lava/webrtc/EglBase;

.field private mEglHandler:Landroid/os/Handler;

.field private final mEngineLock:Ljava/lang/Object;

.field private mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

.field private mPrivateSettingJson:Lorg/json/JSONObject;

.field private mSettingJson:Lorg/json/JSONObject;

.field private sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/NERtcEx;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mChannelList:Ljava/util/List;

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioProfile:I

    .line 139
    iput v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioScenario:I

    const-string v0, "nertc_sdk"

    .line 142
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcFaceDetect"

    .line 143
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcBeauty"

    .line 144
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcPersonSegment"

    .line 145
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcFaceEnhance"

    .line 146
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcVideoDenoise"

    .line 147
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcSuperResolution"

    .line 148
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcnn"

    .line 149
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcAiHowling"

    .line 150
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcAiDenoise"

    .line 151
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "NERtcAudio3D"

    .line 152
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

    invoke-static {v0}, Lcom/netease/lava/webrtc/Logging;->enableLogToDebugOutput(Lcom/netease/lava/webrtc/Logging$Severity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/nertc/impl/NERtcCore;)Landroid/os/Handler;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/lava/nertc/impl/NERtcCore;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/lava/nertc/impl/NERtcCore;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mCallbackDirectBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/lava/nertc/impl/NERtcCore;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mCallbackDirectBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/lava/nertc/impl/NERtcCore;)Lcom/netease/lava/webrtc/EglBase;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglBaseVideoCallback:Lcom/netease/lava/webrtc/EglBase;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/lava/nertc/impl/NERtcCore;Lcom/netease/lava/webrtc/EglBase;)Lcom/netease/lava/webrtc/EglBase;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglBaseVideoCallback:Lcom/netease/lava/webrtc/EglBase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/lava/nertc/impl/NERtcCore;)Lcom/netease/yunxin/lite/model/LiteSDKConfig;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    return-object p0
.end method

.method private checkUninitialized(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMsg"
        }
    .end annotation

    .line 2389
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    if-nez v0, :cond_1

    .line 2390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninitialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NERtcImpl"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;
    .locals 1

    .line 158
    sget-object v0, Lcom/netease/lava/nertc/impl/NERtcCore$SingletonHolder;->instance:Lcom/netease/lava/nertc/impl/NERtcCore;

    return-object v0
.end method

.method public static hashCodeStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 2342
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseConfigEngineParameters(Lcom/netease/lava/nertc/impl/RtcParameters;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "raw"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2291
    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/RtcParameters;->keys()Ljava/util/Set;

    move-result-object v1

    .line 2292
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 2295
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2296
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    const-string v4, "engine."

    .line 2298
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "lava."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2302
    :cond_1
    iget-object v4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lcom/netease/lava/nertc/impl/RtcParameters;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2300
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Lcom/netease/lava/nertc/impl/RtcParameters;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 2305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseConfigEngineParameters:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NERtcImpl"

    invoke-static {v4, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2308
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 2309
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mConfigEngineParam:Ljava/lang/String;

    return-object p1

    :cond_4
    return-object v0
.end method

.method private printCommonInfo()V
    .locals 0

    .line 2321
    invoke-direct {p0}, Lcom/netease/lava/nertc/impl/NERtcCore;->printNERTCInfo()V

    .line 2322
    invoke-direct {p0}, Lcom/netease/lava/nertc/impl/NERtcCore;->printDeviceInfo()V

    return-void
.end method

.method private printDeviceInfo()V
    .locals 18

    const-string v0, "%.2f"

    const-string v1, "}"

    const-string v2, "NERtcImpl"

    .line 2347
    :try_start_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2348
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2349
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2350
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2351
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2352
    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2353
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2356
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnLollipopOrHigher()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    .line 2357
    sget-object v9, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v9, v10, [Ljava/lang/String;

    .line 2360
    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v11, v9, v6

    .line 2363
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SUPPORTED_ABIS:"

    .line 2364
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_1

    .line 2367
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/32 v12, 0x40000000

    .line 2371
    invoke-static {v3}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    long-to-double v12, v12

    div-double/2addr v14, v12

    .line 2372
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getCPUMaxFreqKHz()I

    move-result v3

    int-to-double v12, v3

    mul-double v12, v12, v16

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v12, v12, v16

    .line 2374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App: {packageName:["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", build:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", targetSdkVer:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2374
    invoke-static {v2, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: {MANUFACTURER:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", HARDWARE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", CPU:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getDeviceCpuName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", MODEL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", BOARD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", SDK_INT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", DISPLAY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", CPUName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->getDeviceCpuName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Memory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "GB,GHZ:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v5, v10, [Ljava/lang/Object;

    .line 2382
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2378
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Host: {Unknown}"

    .line 2384
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private printNERTCInfo()V
    .locals 5

    .line 2326
    invoke-static {}, Lcom/netease/lava/nertc/sdk/NERtc;->version()Lcom/netease/lava/nertc/sdk/NERtcVersion;

    move-result-object v0

    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nertc: {ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildRevision:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", branch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildBranch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", env:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->serverEnv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NERtcImpl"

    invoke-static {v3, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "submodules: {lava:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->engineRevision:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pushExternalAudioEncodedFrameInternal(ILcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioType",
            "frame"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 2275
    iget-object v0, p2, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->payloadType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2281
    :try_start_0
    invoke-direct {p0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x7535

    .line 2282
    monitor-exit v0

    return p1

    .line 2284
    :cond_1
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    .line 2285
    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteAudioEncodedFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;

    move-result-object p2

    .line 2284
    invoke-virtual {v1, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->pushExternalAudioEncodedFrame(ILcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const-string p1, "NERtcImpl"

    const-string p2, "pushExternalAudioEncodedFrame frame or payloadType is null"

    .line 2276
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1
.end method

.method private releaseEglHandler()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NERtcImpl"

    const-string v1, "release egl handler start"

    .line 263
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$7L77-iiM7SsDThw8AQ6dVrBMUnk;

    invoke-direct {v1, p0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$7L77-iiM7SsDThw8AQ6dVrBMUnk;-><init>(Lcom/netease/lava/nertc/impl/NERtcCore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/LooperUtils;->quitSafely(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mCallbackDirectBuffer:Ljava/nio/ByteBuffer;

    .line 273
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public EnableSpatializer(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnableSpatializer enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->EnableSpatializer(Z)I

    move-result p1

    return p1
.end method

.method public EnableSpatializerRoomEffects(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnableSpatializerRoomEffects enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->EnableSpatializerRoomEffects(Z)I

    move-result p1

    return p1
.end method

.method public SetSpatializerRenderMode(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetSpatializerRenderMode mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->SetSpatializerRenderMode(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;)I

    move-result p1

    return p1
.end method

.method public SetSpatializerRoomProperty(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcSpatializerRoomProperty property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->SetSpatializerRoomProperty(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;)I

    move-result p1

    return p1
.end method

.method public UpdateSpatializerAudioRecvRange(IILcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audibleDistance",
            "conversationalDistance",
            "rollOff"
        }
    .end annotation

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateSpatializerAudioRecvRange audibleDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \uff0cconversationalDistance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rollOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->UpdateSpatializerAudioRecvRange(IILcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;)I

    move-result p1

    return p1
.end method

.method public UpdateSpatializerSelfPosition(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcSpatializerPositionInfo info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->UpdateSpatializerSelfPosition(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;)I

    move-result p1

    return p1
.end method

.method public addBeautyFilter(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBeautyFilter path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1770
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, ""

    :cond_1
    const-string v1, "template.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x7533

    .line 1773
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "addBeautyFilter"

    invoke-virtual {v1, v3, p1, v2}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    .line 1774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBeautyFilter failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcImpl"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 1778
    :cond_2
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    sget-object v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeFilter:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    .line 1779
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->getValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->addExtraTemplate(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addBeautyMakeup(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBeautyMakeup path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1834
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, ""

    :cond_1
    const-string v1, "template.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x7533

    .line 1837
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "addBeautyMakeup"

    invoke-virtual {v1, v3, p1, v2}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBeautyMakeup failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not exist"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcImpl"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 1842
    :cond_2
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    sget-object v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeMakeup:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->getValue()I

    move-result v1

    .line 1843
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1842
    invoke-virtual {p1, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->addExtraTemplate(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addBeautySticker(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBeautySticker path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NERtcImpl"

    if-eqz v0, :cond_0

    const-string p1, "addBeautySticker failed, mMainChannel is null"

    .line 1803
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7535

    return p1

    .line 1807
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, ""

    :cond_1
    const-string v2, "template.json"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x7533

    .line 1810
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "addBeautySticker"

    invoke-virtual {v2, v4, p1, v3}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    .line 1811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addBeautySticker failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not exist"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 1815
    :cond_2
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    sget-object v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeSticker:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->getValue()I

    move-result v1

    .line 1816
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1815
    invoke-virtual {p1, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->addExtraTemplate(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskInfo",
            "addLiveTaskCallback"
        }
    .end annotation

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLiveStreamTask taskInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \uff0ccallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->addLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;)I

    move-result p1

    return p1
.end method

.method public adjustChannelPlaybackSignalVolume(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustChannelPlaybackSignalVolume volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->adjustChannelPlaybackSignalVolume(I)I

    move-result p1

    return p1
.end method

.method public adjustLoopBackRecordingSignalVolume(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustLoopBackRecordingSignalVolume, volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->adjustLoopBackRecordingSignalVolume(I)I

    move-result p1

    return p1
.end method

.method public adjustPlaybackSignalVolume(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustPlaybackSignalVolume, volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->adjustPlaybackSignalVolume(I)I

    move-result p1

    return p1
.end method

.method public adjustRecordingSignalVolume(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustRecordingSignalVolume, volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->adjustRecordingSignalVolume(I)I

    move-result p1

    return p1
.end method

.method public adjustUserPlaybackSignalVolume(JI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "volume"
        }
    .end annotation

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustUserPlaybackSignalVolume uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->adjustUserPlaybackSignalVolume(JI)I

    move-result p1

    return p1
.end method

.method public createChannel(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/channel/NERtcChannel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelName"
        }
    .end annotation

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcImpl"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    new-instance v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mChannelList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;-><init>(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcCallback;ZLjava/util/List;)V

    return-object v0
.end method

.method public enableAudioVolumeIndication(ZI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "interval"
        }
    .end annotation

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioVolumeIndication, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableAudioVolumeIndication(ZIZ)I

    move-result p1

    return p1
.end method

.method public enableAudioVolumeIndication(ZIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "interval",
            "enableVad"
        }
    .end annotation

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioVolumeIndication, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableVad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableAudioVolumeIndication(ZIZ)I

    move-result p1

    return p1
.end method

.method public enableBeauty(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "enableBeauty"

    .line 1746
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1750
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableBeauty(Z)I

    move-result p1

    return p1
.end method

.method public enableDualStreamMode(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDualStreamMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableDualStreamMode(Z)I

    move-result p1

    return p1
.end method

.method public enableEarback(ZI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "volume"
        }
    .end annotation

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEarback, enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->enableEarback(ZI)I

    move-result p1

    return p1
.end method

.method public enableEncryption(ZLcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "config"
        }
    .end annotation

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEncryption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaCryptoConfig(ZLcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;)Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableMediaCrypto(Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;)I

    move-result p1

    return p1
.end method

.method public enableLocalAudio(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLocalAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableLocalAudio(Z)I

    move-result p1

    return p1
.end method

.method public enableLocalData(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLocalData enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableLocalData(Z)I

    move-result p1

    return p1
.end method

.method public enableLocalSubStreamAudio(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLocalSubStreamAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1884
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableLocalSubStreamAudio(Z)I

    move-result p1

    return p1
.end method

.method public enableLocalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "enable"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLocalVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableLocalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public enableLocalVideo(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/impl/NERtcCore;->enableLocalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public enableLoopbackRecording(ZLandroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "intent",
            "callback"
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLoopbackRecording, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableLoopbackRecording(ZLandroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I

    move-result p1

    return p1
.end method

.method public enableMediaPub(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaType",
            "enable"
        }
    .end annotation

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMediaPub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mediaType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->enableMediaPub(IZ)I

    move-result p1

    return p1
.end method

.method public enableSuperResolution(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSuperResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableSuperResolution(Z)I

    move-result p1

    return p1
.end method

.method public enableVideoCorrection(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVideoCorrection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->enableLocalVideoCorrection(Z)I

    move-result p1

    return p1
.end method

.method public enableVirtualBackground(ZLcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "backgroundSource"
        }
    .end annotation

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVirtualBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string p1, "NERtcImpl"

    const-string p2, "enableVirtualBackground invalid parameters"

    .line 1642
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    .line 1644
    iget-object p2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "enableVirtualBackground"

    invoke-virtual {p2, v1, p1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return p1

    .line 1648
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteVirtualBackgroundSource(Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;)Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->enableVirtualBackground(ZLcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;)I

    move-result p1

    return p1
.end method

.method public getAudioMixingCurrentPosition()J
    .locals 2

    const/4 v0, 0x0

    .line 1119
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7535

    return-wide v0

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getAudioMixingCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioMixingDuration()J
    .locals 2

    const/4 v0, 0x0

    .line 1111
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7535

    return-wide v0

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getAudioMixingDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioMixingPitch()I
    .locals 1

    const/4 v0, 0x0

    .line 1499
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getAudioMixingPitch()I

    move-result v0

    return v0
.end method

.method public getAudioMixingPlaybackVolume()I
    .locals 1

    const/4 v0, 0x0

    .line 1103
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getAudioMixingPlaybackVolume()I

    move-result v0

    return v0
.end method

.method public getAudioMixingSendVolume()I
    .locals 1

    const/4 v0, 0x0

    .line 1087
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getAudioMixingSendVolume()I

    move-result v0

    return v0
.end method

.method public getCameraCurrentZoom()I
    .locals 2

    const-string v0, "NERtcImpl"

    const-string v1, "getCameraCurrentZoom"

    .line 498
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getCameraCurrentZoom()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCameraMaxZoom()I
    .locals 1

    const-string v0, "getCameraMaxZoom"

    .line 507
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getCameraMaxZoom()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getConnectionState()I
    .locals 1

    const/4 v0, 0x0

    .line 1422
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getConnectionState()I

    move-result v0

    return v0
.end method

.method public getCurrentCamera()I
    .locals 2

    .line 1940
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1941
    :try_start_0
    invoke-direct {p0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x7535

    .line 1942
    monitor-exit v0

    return v1

    .line 1944
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getCurrentCamera()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1945
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEffectCurrentPosition(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1310
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7535

    return-wide v0

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->getEffectCurrentPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEffectDuration(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1318
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7535

    return-wide v0

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->getEffectDuration(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEffectPitch(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1232
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->getEffectPitch(I)I

    move-result p1

    return p1
.end method

.method public getEffectPlaybackVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1302
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->getEffectPlaybackVolume(I)I

    move-result p1

    return p1
.end method

.method public getEffectSendVolume(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEffectSendVolume, effectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->getEffectSendVolume(I)I

    move-result p1

    return p1
.end method

.method public getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    return-object v0
.end method

.method public getNtpTimeOffset()J
    .locals 2

    const/4 v0, 0x0

    .line 1905
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getNtpTimeOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameterKey",
            "extraInfo"
        }
    .end annotation

    .line 2268
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    if-eqz v0, :cond_0

    .line 2269
    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLitePrivateParamKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->getParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcCallback;Lcom/netease/lava/nertc/sdk/NERtcOption;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appKey",
            "callback",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 168
    iget v0, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->logLevel:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 169
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 170
    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->enableLogToDebugOutput(I)V

    .line 171
    new-instance v3, Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    invoke-direct {v3}, Lcom/netease/yunxin/lite/model/LiteSDKConfig;-><init>()V

    iput-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    .line 172
    iput-object p2, v3, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->appKey:Ljava/lang/String;

    .line 173
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    iput v0, v3, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->logLevel:I

    .line 174
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    iget-object v4, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->logDir:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    iput-object v4, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->logDirPath:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    if-eqz p4, :cond_2

    iget-object v3, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->serverAddresses:Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;

    :cond_2
    invoke-static {v3}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteServerAddress(Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;)Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->serverAddresses:Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;

    if-eqz p4, :cond_5

    .line 177
    iget-object v0, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    iget-object v3, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    iput-object v3, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    .line 179
    iget-object v0, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    instance-of v0, v0, Landroid/opengl/EGLContext;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    new-instance v3, Lcom/netease/lava/webrtc/EglBase14Impl$Context;

    iget-object p4, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    check-cast p4, Landroid/opengl/EGLContext;

    invoke-direct {v3, p4}, Lcom/netease/lava/webrtc/EglBase14Impl$Context;-><init>(Landroid/opengl/EGLContext;)V

    iput-object v3, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    goto :goto_2

    .line 181
    :cond_3
    iget-object v0, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    new-instance v3, Lcom/netease/lava/webrtc/EglBase10Impl$Context;

    iget-object p4, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    check-cast p4, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v3, p4}, Lcom/netease/lava/webrtc/EglBase10Impl$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    iput-object v3, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    goto :goto_2

    .line 183
    :cond_4
    iget-object v0, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    instance-of v0, v0, Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    iget-object p4, p4, Lcom/netease/lava/nertc/sdk/NERtcOption;->eglContext:Ljava/lang/Object;

    check-cast p4, Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {p4}, Lcom/netease/lava/webrtc/EglBase;->getEglBaseContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object p4

    iput-object p4, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    goto :goto_2

    .line 187
    :cond_5
    sget-object p4, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PLAIN:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {p4}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p4

    iput-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 188
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    invoke-interface {p4}, Lcom/netease/lava/webrtc/EglBase;->getEglBaseContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object p4

    iput-object p4, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    .line 191
    :cond_6
    :goto_2
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    invoke-static {p4}, Lcom/netease/yunxin/lite/LiteEngineCenter;->initialize(Lcom/netease/yunxin/lite/model/LiteSDKConfig;)V

    .line 192
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    if-eqz p4, :cond_7

    .line 194
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/netease/yunxin/lite/LiteEngineCenter;->setParameters(Ljava/lang/String;)V

    .line 196
    :cond_7
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mConfigEngineParam:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    .line 197
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mConfigEngineParam:Ljava/lang/String;

    invoke-static {p4}, Lcom/netease/yunxin/lite/LiteEngineCenter;->setPassThroughParameters(Ljava/lang/String;)V

    .line 199
    :cond_8
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter p4

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    if-eqz v0, :cond_9

    .line 201
    iput-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 202
    invoke-virtual {v0, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setMainChannelNERtcCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;)V

    .line 203
    monitor-exit p4

    return-void

    .line 205
    :cond_9
    iput-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 206
    new-instance v0, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    const-string v3, "Main"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mChannelList:Ljava/util/List;

    invoke-direct {v0, v3, p3, v4, v5}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;-><init>(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcCallback;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    .line 208
    iget v3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioProfile:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    iget v3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioScenario:I

    if-eq v3, v4, :cond_a

    .line 209
    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    iget v3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioProfile:I

    iget v4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioScenario:I

    invoke-virtual {v0, v3, v4}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioProfile(II)I

    .line 211
    :cond_a
    sget-boolean v0, Lcom/netease/lava/nertc/foreground/ForegroundKit;->mCacheReport:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "pkg"

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v3

    const-string v4, "startForeground"

    const/4 v5, 0x0

    .line 215
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v3, v4, v5, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    .line 217
    :cond_b
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 218
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/yunxin/lite/LiteEngine;->executePrivateApi(Ljava/lang/String;)I

    .line 220
    :cond_c
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-direct {p0}, Lcom/netease/lava/nertc/impl/NERtcCore;->printCommonInfo()V

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 224
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p4}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p4

    invoke-virtual {p4, v3, v4}, Lcom/netease/yunxin/lite/LiteEngine;->setInitializeDone(J)I

    const-string p4, "NERtcImpl"

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init, context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", appKey:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", callback:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 220
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isCameraExposurePositionSupported()Z
    .locals 1

    const/4 v0, 0x0

    .line 531
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->isCameraExposurePositionSupported()Z

    move-result v0

    return v0
.end method

.method public isCameraFocusSupported()Z
    .locals 1

    const/4 v0, 0x0

    .line 547
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->isCameraFocusSupported()Z

    move-result v0

    return v0
.end method

.method public isCameraTorchSupported()Z
    .locals 1

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->isCameraTorchSupported()Z

    move-result v0

    return v0
.end method

.method public isCameraZoomSupported()Z
    .locals 1

    const-string v0, "isCameraZoomSupported"

    .line 482
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->isCameraZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isPlayoutDeviceMute()Z
    .locals 1

    const/4 v0, 0x0

    .line 1350
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->isPlayoutDeviceMute()Z

    move-result v0

    return v0
.end method

.method public isRecordDeviceMute()Z
    .locals 1

    const/4 v0, 0x0

    .line 1366
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->isRecordDeviceMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    const/4 v0, 0x0

    .line 563
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getLoudspeakerMode()Z

    move-result v0

    return v0
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channelName",
            "uid"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "joinChannel, token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channelName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setChannelName(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->joinChannel(Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I

    move-result p1

    return p1
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channelName",
            "uid",
            "channelOptions"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "joinChannel, token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channelName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", channelOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setChannelName(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->joinChannel(Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I

    move-result p1

    return p1
.end method

.method public synthetic lambda$releaseEglHandler$0$NERtcCore()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglBaseVideoCallback:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglBaseVideoCallback:Lcom/netease/lava/webrtc/EglBase;

    :cond_0
    const-string v0, "NERtcImpl"

    const-string v1, "release egl handler end"

    .line 269
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public leaveChannel()I
    .locals 1

    const-string v0, "leaveChannel"

    .line 305
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->leaveChannel()I

    move-result v0

    return v0
.end method

.method public muteLocalAudioStream(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "muteLocalAudioStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->muteLocalAudioStream(Z)I

    move-result p1

    return p1
.end method

.method public muteLocalSubStreamAudio(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "muteLocalSubStreamAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->muteLocalSubStreamAudio(Z)I

    move-result p1

    return p1
.end method

.method public muteLocalVideoStream(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "mute"
        }
    .end annotation

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "muteLocalVideoStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p2, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->muteLocalVideoStream(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public muteLocalVideoStream(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/impl/NERtcCore;->muteLocalVideoStream(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public pauseAllEffects()I
    .locals 1

    const-string v0, "pauseAllEffects"

    .line 1175
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->pauseAllEffects()I

    move-result v0

    return v0
.end method

.method public pauseAudioMixing()I
    .locals 1

    const-string v0, "pauseAudioMixing"

    .line 1063
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->pauseAudioMixing()I

    move-result v0

    return v0
.end method

.method public pauseEffect(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseEffect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->pauseEffect(I)I

    move-result p1

    return p1
.end method

.method public playEffect(ILcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "option"
        }
    .end annotation

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteAudioEffectOption(Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;)Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->playEffect(ILcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;)I

    move-result p1

    return p1
.end method

.method public postOnGLThread(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    const-string v1, "NERtcImpl"

    if-eqz v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnGLThread post :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1001
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnGLThread failed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pullExternalAudioFrame(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "len"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 849
    :try_start_0
    invoke-direct {p0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x7535

    .line 850
    monitor-exit v0

    return p1

    :cond_0
    const/16 v1, 0x7533

    if-eqz p1, :cond_3

    .line 852
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, p2, :cond_1

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 856
    monitor-exit v0

    return v1

    .line 858
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->pullExternalAudioFrame(Ljava/nio/ByteBuffer;I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 853
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 859
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushExternalAudioEncodedFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedAudioFrame"
        }
    .end annotation

    const/4 v0, 0x0

    .line 773
    invoke-direct {p0, v0, p1}, Lcom/netease/lava/nertc/impl/NERtcCore;->pushExternalAudioEncodedFrameInternal(ILcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)I

    move-result p1

    return p1
.end method

.method public pushExternalAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 829
    :try_start_0
    invoke-direct {p0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x7535

    .line 830
    monitor-exit v0

    return p1

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->pushExternalAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 833
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushExternalSubStreamAudioEncodedFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedAudioFrame"
        }
    .end annotation

    const/4 v0, 0x1

    .line 778
    invoke-direct {p0, v0, p1}, Lcom/netease/lava/nertc/impl/NERtcCore;->pushExternalAudioEncodedFrameInternal(ILcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)I

    move-result p1

    return p1
.end method

.method public pushExternalSubStreamAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 1930
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1931
    :try_start_0
    invoke-direct {p0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x7535

    .line 1932
    monitor-exit v0

    return p1

    .line 1934
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->pushExternalAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1935
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushExternalVideoEncodedFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "encodedFrame"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 785
    iget-object v0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->codecType:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->frameType:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    if-nez v0, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 792
    :try_start_0
    invoke-direct {p0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x7535

    .line 793
    monitor-exit v0

    return p1

    .line 795
    :cond_1
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    .line 796
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    .line 797
    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteVideoEncodedFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;)Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;

    move-result-object p2

    .line 795
    invoke-virtual {v1, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->pushExternalVideoEncodedFrame(ILcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 798
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const-string p1, "NERtcImpl"

    const-string p2, "pushExternalVideoEncodedFrame frame or codecType or frameType is null"

    .line 787
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1
.end method

.method public pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/impl/NERtcCore;->pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z

    move-result p1

    return p1
.end method

.method public pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 759
    iget-object v1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    if-nez v1, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 764
    :try_start_0
    invoke-direct {p0, v2}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    monitor-exit v1

    return v0

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 768
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const-string p1, "NERtcImpl"

    const-string p2, "pushExternalVideoFrame frame or format is null"

    .line 760
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public release()V
    .locals 3

    const-string v0, "NERtcImpl"

    const-string v1, "release start"

    .line 230
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEngineLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->release()V

    .line 234
    iput-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    .line 236
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mChannelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mChannelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    .line 240
    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->release()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mChannelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iput-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    .line 244
    iput-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    .line 245
    iput-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mConfigEngineParam:Ljava/lang/String;

    const/4 v0, -0x1

    .line 246
    iput v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioProfile:I

    .line 247
    iput v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioScenario:I

    .line 248
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_2

    .line 249
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 250
    iput-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mEglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 252
    :cond_2
    invoke-static {v2}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->setFilter(Lcom/netease/yunxin/lite/video/IVideoFrameFilter;)V

    .line 253
    invoke-static {v2}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->setEGLBase(Lcom/netease/lava/webrtc/EglBase$Context;)V

    .line 254
    invoke-direct {p0}, Lcom/netease/lava/nertc/impl/NERtcCore;->releaseEglHandler()V

    .line 255
    invoke-static {}, Lcom/netease/yunxin/lite/LiteEngineCenter;->unInitialize()V

    const-string v0, "NERtcImpl"

    const-string v1, "release finish"

    .line 256
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeBeautyFilter()V
    .locals 2

    const-string v0, "removeBeautyFilter"

    .line 1784
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeFilter:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/LiteEngine;->removeExtraTemplate(I)I

    return-void
.end method

.method public removeBeautyMakeup()V
    .locals 2

    const-string v0, "removeBeautyMakeup"

    .line 1848
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeMakeup:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/LiteEngine;->removeExtraTemplate(I)I

    return-void
.end method

.method public removeBeautySticker()V
    .locals 2

    const-string v0, "removeBeautySticker"

    .line 1821
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeSticker:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/LiteEngine;->removeExtraTemplate(I)I

    return-void
.end method

.method public removeLiveStreamTask(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "deleteLiveTaskCallback"
        }
    .end annotation

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeLiveStreamTask taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \uff0ccallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->removeLiveStreamTask(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;)I

    move-result p1

    return p1
.end method

.method public reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventName",
            "customIdentify",
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1981
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result p1

    return p1
.end method

.method public resumeAllEffects()I
    .locals 1

    const-string v0, "resumeAllEffects"

    .line 1183
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->resumeAllEffects()I

    move-result v0

    return v0
.end method

.method public resumeAudioMixing()I
    .locals 1

    const-string v0, "resumeAudioMixing"

    .line 1071
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->resumeAudioMixing()I

    move-result v0

    return v0
.end method

.method public resumeEffect(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeEffect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->resumeEffect(I)I

    move-result p1

    return p1
.end method

.method public sendData(Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1973
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->sendData(Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;)I

    move-result p1

    return p1
.end method

.method public sendSEIMsg(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seiMsg"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSEIMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->sendSEIMsg(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendSEIMsg(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seiMsg",
            "streamType"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSEIMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->sendSEIMsg(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public setAudioEffectPreset(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioEffectPreset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioEffectPreset(I)I

    move-result p1

    return p1
.end method

.method public setAudioFocusMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusMode"
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioFocusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioFocusMode(I)I

    move-result p1

    return p1
.end method

.method public setAudioFrameObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioFrameObserver, observer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;

    invoke-direct {v1, p1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;-><init>(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioFrameObserver(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameObserver;)I

    move-result p1

    return p1
.end method

.method public setAudioMixingPitch(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioMixingPitch , pitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioMixingPitch(I)I

    move-result p1

    return p1
.end method

.method public setAudioMixingPlaybackVolume(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioMixingPlaybackVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioMixingPlaybackVolume(I)I

    move-result p1

    return p1
.end method

.method public setAudioMixingPosition(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioMixingPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioMixingPosition(J)I

    move-result p1

    return p1
.end method

.method public setAudioMixingSendVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const-string v0, "setAudioMixingSendVolume"

    .line 1079
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioMixingSendVolume(I)I

    move-result p1

    return p1
.end method

.method public setAudioProcessObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioProcessObserver"
        }
    .end annotation

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioProcessObserver, observer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setAudioProcessObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;)I

    move-result p1

    return p1
.end method

.method public setAudioProfile(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "scenario"
        }
    .end annotation

    .line 337
    iput p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioProfile:I

    .line 338
    iput p2, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->audioScenario:I

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioProfile profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , scenario: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setAudioProfile(II)I

    move-result p1

    return p1
.end method

.method public setAudioSubscribeOnlyBy([J)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uidArray"
        }
    .end annotation

    const-string v0, "setAudioSubscribeOnlyBy"

    .line 1873
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setAudioSubscribeOnlyBy([J)I

    move-result p1

    return p1
.end method

.method public setBeautyEffect(Lcom/netease/lava/nertc/sdk/video/NERtcBeautyEffectType;F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beautyType",
            "level"
        }
    .end annotation

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBeautyEffect level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/lava/nertc/sdk/video/NERtcBeautyEffectType;->getValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setBeautyEffect(IF)I

    move-result p1

    return p1
.end method

.method public setBeautyFilterLevel(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBeautyFilterLevel level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setBeautyEffect(IF)I

    move-result p1

    return p1
.end method

.method public setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureConfig"
        }
    .end annotation

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureConfig",
            "streamType"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCaptureConfig captureConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public setCameraExposurePosition(FF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraExposurePosition, x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ,y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setCameraExposurePosition(FF)I

    move-result p1

    return p1
.end method

.method public setCameraFocusPosition(FF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraFocusPosition, x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ,y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setCameraFocusPosition(FF)I

    move-result p1

    return p1
.end method

.method public setCameraTorchOn(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraTorchOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setCameraTorchOn(Z)I

    move-result p1

    return p1
.end method

.method public setCameraZoomFactor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraZoomFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setCameraZoomFactor(F)I

    return-void
.end method

.method public setChannelProfile(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelProfile"
        }
    .end annotation

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChannelProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setChannelProfile(I)I

    move-result p1

    return p1
.end method

.method public setClientRole(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClientRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setClientRole(I)I

    move-result p1

    return p1
.end method

.method public setCloudProxy(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxyType"
        }
    .end annotation

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCloudProxy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setCloudProxy(I)I

    move-result p1

    return p1
.end method

.method public setEarbackVolume(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEarbackVolume, volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setEarbackVolume(I)I

    move-result p1

    return p1
.end method

.method public setEffectPitch(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "pitch"
        }
    .end annotation

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectPitch, effectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setEffectPitch(II)I

    move-result p1

    return p1
.end method

.method public setEffectPlaybackVolume(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "volume"
        }
    .end annotation

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectPlaybackVolume, effectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setEffectPlaybackVolume(II)I

    move-result p1

    return p1
.end method

.method public setEffectPosition(IJ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "position"
        }
    .end annotation

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectPosition, effectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->setEffectPosition(IJ)I

    move-result p1

    return p1
.end method

.method public setEffectSendVolume(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "volume"
        }
    .end annotation

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectSendVolume, effectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcImpl"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1192
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setEffectSendVolume(II)I

    move-result p1

    return p1
.end method

.method public setExternalAudioRender(ZII)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sampleRate",
            "channels"
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalAudioRender, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcImpl"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 840
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->setExternalAudioRender(ZII)I

    move-result p1

    return p1
.end method

.method public setExternalAudioSource(ZII)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sampleRate",
            "channels"
        }
    .end annotation

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalAudioSource, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setExternalAudioSource(ZII)I

    move-result p1

    return p1
.end method

.method public setExternalSubStreamAudioSource(ZII)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "sampleRate",
            "channels"
        }
    .end annotation

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalSubStreamAudioSource, enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/netease/yunxin/lite/LiteEngine;->setExternalAudioSource(ZIII)I

    move-result p1

    return p1
.end method

.method public setExternalVideoSource(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "enable"
        }
    .end annotation

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalVideoSource enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setExternalVideoSource(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public setExternalVideoSource(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/impl/NERtcCore;->setExternalVideoSource(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public setLocalExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "renderer"
        }
    .end annotation

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalExternalVideoRenderer streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renderer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/netease/yunxin/lite/util/CommonUtils;->getHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setLocalExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I

    move-result p1

    return p1
.end method

.method public setLocalMediaPriority(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "priority",
            "isPreemptive"
        }
    .end annotation

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalMediaPriority priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,isPreemptive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setLocalMediaPriority(IZ)I

    move-result p1

    return p1
.end method

.method public setLocalPublishFallbackOption(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalPublishFallbackOption option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setLocalPublishFallbackOption(I)I

    move-result p1

    return p1
.end method

.method public setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoConfig"
        }
    .end annotation

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, p1, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoConfig",
            "streamType"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalVideoConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    return p1
.end method

.method public setLocalVideoWatermarkConfigs(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "config"
        }
    .end annotation

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalVideoWatermarkConfigs type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    .line 1860
    invoke-static {p2}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteVideoWatermarkConfig(Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;)Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;

    move-result-object p2

    .line 1859
    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalVideoWatermarkConfigs(ILcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceEqualization(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bandFrequency",
            "bandGain"
        }
    .end annotation

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalVoiceEqualization, bandFrequency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bandGain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalVoiceEqualization(II)I

    move-result p1

    return p1
.end method

.method public setLocalVoicePitch(D)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalVoicePitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalVoicePitch(D)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceReverbParam(Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "NERtcImpl"

    const-string v0, "setLocalVoiceReverbParam, param is null"

    .line 644
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 647
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x7535

    return p1

    .line 651
    :cond_1
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;-><init>()V

    .line 652
    iget v1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->wetGain:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->wetGain:F

    .line 653
    iget v1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->dryGain:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->dryGain:F

    .line 654
    iget v1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->damping:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->damping:F

    .line 655
    iget v1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->roomSize:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->roomSize:F

    .line 656
    iget v1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->decayTime:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->decayTime:F

    .line 657
    iget p1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->preDelay:F

    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->preDelay:F

    .line 658
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalVoiceReverbParam(Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;)I

    move-result p1

    return p1
.end method

.method public setMixedAudioFrameParameters(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordingAudioFrameParameters, format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "NERtcImpl"

    const-string v0, "setMixedAudioFrameParameters, invalid params"

    .line 989
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteAudioFrameRequestFormat(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setMixedAudioFrameParameters(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;)I

    move-result p1

    return p1
.end method

.method public setNERtcCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNERtcCallback, callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1245
    new-instance v0, Lcom/netease/lava/nertc/impl/EmptyNERtcCallbackEx;

    invoke-direct {v0}, Lcom/netease/lava/nertc/impl/EmptyNERtcCallbackEx;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1246
    :goto_0
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 1247
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1, v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setMainChannelNERtcCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;)V

    const/4 v0, 0x0

    .line 1249
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1250
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/NERtcCore;->hashCodeStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "callback"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setNERtcCallback"

    invoke-virtual {p1, v2, v0, v1}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v0
.end method

.method public setParameters(Lcom/netease/lava/nertc/sdk/NERtcParameters;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "key_audiomix_enable_without_mic"

    const-string v3, "key_vp8_mode"

    const-string v4, "key_audio_ai_ns_enable"

    const-string v5, "key_audio_external_audio_mix"

    const-string v6, "key_audio_ns_enable"

    const-string v7, "key_audio_agc_enable"

    const-string v8, "key_audio_aec_enable"

    const-string v9, "key_dispatcher_forwarded_ip"

    const-string v10, "key_quic_server_uri"

    const-string v11, "key_media_server_uri"

    const-string v12, "key_data_encrypt_mode"

    const-string v13, "key_nevc_switch"

    const-string v14, "key_h265_switch"

    const-string v15, "sdk.new.channel.scenario.type"

    move-object/from16 v16, v15

    const-string v15, "sdk.getChannelInfo.response"

    move-object/from16 v17, v15

    const-string v15, "sdk.getChannelInfo.custom.data"

    move-object/from16 v18, v15

    const-string v15, "sdk.disable.getChannelInfo"

    move-object/from16 v19, v15

    const-string v15, "sdk.audio.codec.bitrate"

    move-object/from16 v20, v2

    const-string v2, "key_test_server_uri"

    move-object/from16 v21, v15

    const-string v15, "sdk.enable.encrypt.log"

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v22, v3

    .line 1993
    invoke-virtual/range {p1 .. p1}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getRawParameters()Lcom/netease/lava/nertc/impl/RtcParameters;

    move-result-object v3

    .line 1994
    invoke-virtual {v3}, Lcom/netease/lava/nertc/impl/RtcParameters;->keys()Ljava/util/Set;

    move-result-object v23

    .line 1995
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1

    return-void

    :cond_1
    move-object/from16 v23, v4

    .line 1998
    iget-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    if-nez v4, :cond_2

    .line 1999
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    .line 2001
    :cond_2
    iget-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    if-nez v4, :cond_3

    .line 2002
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    .line 2005
    :cond_3
    :try_start_0
    invoke-virtual {v3, v15}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2006
    iget-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    move-object/from16 v24, v5

    invoke-virtual {v3, v15}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2007
    iget-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/yunxin/lite/LiteEngineCenter;->setParameters(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v3, v15}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object/from16 v24, v5

    .line 2011
    :goto_0
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2012
    iget-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v5, "sdk.enable.debug.environment"

    .line 2013
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 2012
    invoke-virtual {v4, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2015
    iget-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/yunxin/lite/LiteEngineCenter;->setParameters(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/netease/yunxin/lite/util/ContextUtils;->setDebug(Z)V

    .line 2017
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_5
    const-string v2, "key_auto_subscribe_audio"

    .line 2020
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2021
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.auto.subscribe.audio"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_AUTO_SUBSCRIBE_AUDIO:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2022
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v5

    .line 2021
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_auto_subscribe_audio"

    .line 2023
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_6
    const-string v2, "key_video_local_preview_mirror"

    .line 2026
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2027
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.mirror.with.front.camera"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_VIDEO_LOCAL_PREVIEW_MIRROR:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2028
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v5

    .line 2027
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_video_local_preview_mirror"

    .line 2029
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_7
    const-string v2, "key_server_record_audio"

    .line 2032
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2033
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.record.audio"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_SERVER_RECORD_AUDIO:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2034
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v5

    .line 2033
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_server_record_audio"

    .line 2035
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_8
    const-string v2, "key_server_record_video"

    .line 2038
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2039
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.record.video"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_SERVER_RECORD_VIDEO:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2040
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v5

    .line 2039
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_server_record_video"

    .line 2041
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_9
    const-string v2, "key_server_record_speaker"

    .line 2044
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2045
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.record.host"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_SERVER_RECORD_SPEAKER:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2046
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v5

    .line 2045
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_server_record_speaker"

    .line 2047
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_a
    const-string v2, "key_server_record_mode"

    .line 2050
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2051
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.set.record.type"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_SERVER_RECORD_MODE:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2052
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getInteger(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)I

    move-result v5

    .line 2051
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "key_server_record_mode"

    .line 2053
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_b
    const-string v2, "key_video_encode_mode"

    .line 2056
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    .line 2057
    sget-object v2, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_VIDEO_ENCODE_MODE:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    invoke-virtual {v0, v2}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getString(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Ljava/lang/String;

    move-result-object v2

    const/4 v15, -0x1

    const-string v4, "media_codec_hardware"

    .line 2059
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v15, 0x1

    goto :goto_1

    :cond_c
    const-string v4, "media_codec_software"

    .line 2061
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v15, 0x0

    .line 2064
    :cond_d
    :goto_1
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.prefer.encode.mode"

    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "key_video_encode_mode"

    .line 2065
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_e
    const-string v2, "key_video_decode_mode"

    .line 2068
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2069
    sget-object v2, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_VIDEO_DECODE_MODE:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    invoke-virtual {v0, v2}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getString(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const-string v15, "media_codec_hardware"

    .line 2071
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v4, 0x1

    goto :goto_2

    :cond_f
    const-string v15, "media_codec_software"

    .line 2073
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v4, 0x0

    .line 2076
    :cond_10
    :goto_2
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v15, "sdk.prefer.decode.mode"

    invoke-virtual {v2, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "key_video_decode_mode"

    .line 2077
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_11
    const-string v2, "key_video_camera_type"

    .line 2080
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2081
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.set.camera.type"

    sget-object v15, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_VIDEO_CAMERA_TYPE:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2082
    invoke-virtual {v0, v15}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getInteger(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)I

    move-result v15

    .line 2081
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "key_video_camera_type"

    .line 2083
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_12
    const-string v2, "key_publish_self_stream"

    .line 2086
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2087
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.push.self.stream"

    sget-object v15, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_PUBLISH_SELF_STREAM:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2088
    invoke-virtual {v0, v15}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v15

    .line 2087
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_publish_self_stream"

    .line 2089
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_13
    const-string v2, "key_video_send_mode"

    .line 2092
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2093
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.publish.video.mode"

    sget-object v15, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_VIDEO_SEND_MODE:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2094
    invoke-virtual {v0, v15}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getInteger(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)I

    move-result v15

    .line 2093
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "key_video_send_mode"

    .line 2095
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_14
    const-string v2, "key_auto_subscribe_video"

    .line 2098
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2099
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.auto.subscribe.video"

    sget-object v15, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_AUTO_SUBSCRIBE_VIDEO:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2100
    invoke-virtual {v0, v15}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v15

    .line 2099
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_auto_subscribe_video"

    .line 2101
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_15
    const-string v2, "key_auto_subscribe_data"

    .line 2104
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2105
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.auto.subscribe.data"

    sget-object v15, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_AUTO_SUBSCRIBE_DATA:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2106
    invoke-virtual {v0, v15}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v15

    .line 2105
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_auto_subscribe_data"

    .line 2107
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_16
    const-string v2, "key_audio_bluetooth_sco"

    .line 2110
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2111
    sget-object v2, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_AUDIO_BLUETOOTH_SCO:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    invoke-virtual {v0, v2}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2112
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkBluetoothScoConnectPermission(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v2, "NERtcImpl"

    const-string v4, "no bluetooth permission so force use a2dp "

    .line 2114
    invoke-static {v2, v4}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2117
    :cond_17
    iget-object v4, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v15, "sdk.audio.enable.bluetooth.sco"

    if-eqz v2, :cond_18

    const/4 v5, 0x1

    :cond_18
    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "key_audio_bluetooth_sco"

    .line 2118
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_19
    const-string v2, "key_disable_video_decoder"

    .line 2121
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2122
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.disable.video.decoder"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_DISABLE_VIDEO_DECODER:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2123
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v5

    .line 2122
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_disable_video_decoder"

    .line 2124
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_1a
    const-string v2, "key_enable_1v1_mode"

    .line 2127
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2128
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.1v1.Mode"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_ENABLE_1V1_MODEL:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2129
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v5

    .line 2128
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "key_enable_1v1_mode"

    .line 2130
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_1b
    const-string v2, "key_custom_extra_info"

    .line 2133
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2134
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.set.extra.info"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_CUSTOM_EXTRA_INFO:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2135
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getString(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Ljava/lang/String;

    move-result-object v5

    .line 2134
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key_custom_extra_info"

    .line 2136
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_1c
    const-string v2, "key_enable_report_volume_when_mute"

    .line 2139
    invoke-virtual {v3, v2}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2140
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.report.volume.with.mute"

    sget-object v5, Lcom/netease/lava/nertc/sdk/NERtcParameters;->KEY_ENABLE_REPORT_VOLUME_WHEN_MUTE:Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    .line 2141
    invoke-virtual {v0, v5}, Lcom/netease/lava/nertc/sdk/NERtcParameters;->getBoolean(Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;)Z

    move-result v0

    .line 2140
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "key_enable_report_volume_when_mute"

    .line 2142
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2146
    :cond_1d
    invoke-virtual {v3, v14}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2147
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.prefer.h265"

    .line 2148
    invoke-virtual {v3, v14}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2147
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2149
    invoke-virtual {v3, v14}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2152
    :cond_1e
    invoke-virtual {v3, v13}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2153
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.prefer.nevc"

    .line 2154
    invoke-virtual {v3, v13}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2153
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2155
    invoke-virtual {v3, v13}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2158
    :cond_1f
    invoke-virtual {v3, v12}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2159
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.enable.encrypt.media"

    .line 2160
    invoke-virtual {v3, v12}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2159
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2161
    invoke-virtual {v3, v12}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2164
    :cond_20
    invoke-virtual {v3, v11}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2165
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.set.tune.server"

    .line 2166
    invoke-virtual {v3, v11}, Lcom/netease/lava/nertc/impl/RtcParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2165
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2167
    invoke-virtual {v3, v11}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2170
    :cond_21
    invoke-virtual {v3, v10}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2171
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.set.signal.proxy.server"

    .line 2172
    invoke-virtual {v3, v10}, Lcom/netease/lava/nertc/impl/RtcParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2171
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2173
    invoke-virtual {v3, v10}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2176
    :cond_22
    invoke-virtual {v3, v9}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2177
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.set.forward.server"

    .line 2178
    invoke-virtual {v3, v9}, Lcom/netease/lava/nertc/impl/RtcParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2177
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2179
    invoke-virtual {v3, v9}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2182
    :cond_23
    invoke-virtual {v3, v8}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2183
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.enable.aec"

    .line 2184
    invoke-virtual {v3, v8}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2183
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2185
    invoke-virtual {v3, v8}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2188
    :cond_24
    invoke-virtual {v3, v7}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2189
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.enable.agc"

    .line 2190
    invoke-virtual {v3, v7}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2189
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2191
    invoke-virtual {v3, v7}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2194
    :cond_25
    invoke-virtual {v3, v6}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2195
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v2, "sdk.enable.ns"

    .line 2196
    invoke-virtual {v3, v6}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2195
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2197
    invoke-virtual {v3, v6}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_26
    move-object/from16 v0, v24

    .line 2200
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2201
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.audio.mix"

    .line 2202
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2201
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2203
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, v23

    .line 2206
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2207
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.audio.ains"

    .line 2208
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2207
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2209
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_28
    move-object/from16 v0, v22

    .line 2212
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2213
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.set.vp8.mode"

    .line 2214
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 2213
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2215
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_29
    move-object/from16 v0, v21

    .line 2218
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2219
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2220
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_2a
    move-object/from16 v0, v20

    .line 2223
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2224
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    const-string v4, "sdk.enable.audio.mixing.pub.standalone"

    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2225
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_2b
    move-object/from16 v0, v19

    .line 2228
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2229
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLitePrivateParamKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2230
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_2c
    move-object/from16 v0, v18

    .line 2233
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2234
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLitePrivateParamKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2235
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v0, v17

    .line 2238
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2239
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLitePrivateParamKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2240
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    :cond_2e
    move-object/from16 v0, v16

    .line 2243
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2244
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLitePrivateParamKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2245
    invoke-virtual {v3, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->removeParameters(Ljava/lang/String;)V

    .line 2248
    :cond_2f
    invoke-direct {v1, v3}, Lcom/netease/lava/nertc/impl/NERtcCore;->parseConfigEngineParameters(Lcom/netease/lava/nertc/impl/RtcParameters;)Ljava/lang/String;

    move-result-object v0

    .line 2249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2250
    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    if-eqz v2, :cond_30

    .line 2251
    invoke-static {v0}, Lcom/netease/yunxin/lite/LiteEngineCenter;->setPassThroughParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2256
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "NERtcImpl"

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :cond_30
    :goto_3
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    if-eqz v0, :cond_31

    .line 2259
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/LiteEngineCenter;->setParameters(Ljava/lang/String;)V

    .line 2260
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_31

    .line 2261
    iget-object v0, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/lava/nertc/impl/NERtcCore;->mPrivateSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/yunxin/lite/LiteEngine;->executePrivateApi(Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public setPlaybackAudioFrameParameters(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordingAudioFrameParameters, format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "NERtcImpl"

    const-string v0, "setPlaybackAudioFrameParameters, invalid params"

    .line 977
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteAudioFrameRequestFormat(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setPlaybackAudioFrameParameters(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;)I

    move-result p1

    return p1
.end method

.method public setPlayoutDeviceMute(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1342
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setPlayoutDeviceMute(Z)I

    move-result p1

    return p1
.end method

.method public setPreDecodeObserver(Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreDecodeObserver, observer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/netease/lava/nertc/impl/wrapper/NERtcPreDecodeObserverWrapper;

    invoke-direct {v1, p1}, Lcom/netease/lava/nertc/impl/wrapper/NERtcPreDecodeObserverWrapper;-><init>(Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setPreDecodeObserver(Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeObserver;)I

    move-result p1

    return p1
.end method

.method public setRecordDeviceMute(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1358
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setRecordDeviceMute(Z)I

    move-result p1

    return p1
.end method

.method public setRecordingAudioFrameParameters(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordingAudioFrameParameters, format:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "NERtcImpl"

    const-string v0, "setRecordingAudioFrameParameters, invalid params"

    .line 965
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteAudioFrameRequestFormat(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setRecordingAudioFrameParameters(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;)I

    move-result p1

    return p1
.end method

.method public setRemoteExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JLcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "uid",
            "renderer"
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRemoteExternalVideoRenderer streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", renderer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/CommonUtils;->getHashCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setRemoteExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JLcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I

    move-result p1

    return p1
.end method

.method public setRemoteHighPriorityAudioStream(ZJ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "uid"
        }
    .end annotation

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRemoteHighPriorityAudioStream enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcImpl"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1654
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setRemoteHighPriorityAudioStream(ZJ)I

    move-result p1

    return p1
.end method

.method public setRemoteSubscribeFallbackOption(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRemoteSubscribeFallbackOption option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setRemoteSubscribeFallbackOption(I)I

    move-result p1

    return p1
.end method

.method public setSpeakerphoneOn(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeakerphoneOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setLoudspeakerMode(Z)I

    move-result p1

    return p1
.end method

.method public setStatsObserver(Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsObserver"
        }
    .end annotation

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatsObserver, observer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setStatsObserver(Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;)V

    return-void
.end method

.method public setStreamAlignmentProperty(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStreamAlignmentProperty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1900
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setStreamAlignmentProperty(Z)I

    return-void
.end method

.method public setVideoCallback(Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoCallback",
            "textureWithI420"
        }
    .end annotation

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoCallback, videoCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textureWithI420: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 868
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->setFilter(Lcom/netease/yunxin/lite/video/IVideoFrameFilter;)V

    .line 869
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->setEGLBase(Lcom/netease/lava/webrtc/EglBase$Context;)V

    goto :goto_0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->sdkConfig:Lcom/netease/yunxin/lite/model/LiteSDKConfig;

    iget-object v0, v0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    check-cast v0, Lcom/netease/lava/webrtc/EglBase$Context;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->setEGLBase(Lcom/netease/lava/webrtc/EglBase$Context;)V

    .line 872
    new-instance v0, Lcom/netease/lava/nertc/impl/NERtcCore$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/netease/lava/nertc/impl/NERtcCore$1;-><init>(Lcom/netease/lava/nertc/impl/NERtcCore;ZLcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->setFilter(Lcom/netease/yunxin/lite/video/IVideoFrameFilter;)V

    .line 931
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "callback"

    if-eqz p1, :cond_2

    .line 933
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "null"

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "force_i420"

    .line 934
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 935
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    const-string p2, "setVideoCallback"

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 937
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setVideoCorrectionConfig(Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoCorrectionConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 1629
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteVideoCorrection(Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalVideoCorrectionConfig(ZLcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;)I

    move-result p1

    return p1

    .line 1631
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteVideoCorrection(Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setLocalVideoCorrectionConfig(ZLcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;)I

    move-result p1

    return p1
.end method

.method public setVideoEncoderQosObserver(Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoderQosObserver"
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoEncoderQosObserver, observer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;

    invoke-direct {v1, p1}, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;-><init>(Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setVideoEncoderQosObserver(Lcom/netease/yunxin/lite/model/LiteSDKVideoEncoderQosObserver;)I

    move-result p1

    return p1
.end method

.method public setVoiceBeautifierPreset(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceBeautifierPreset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->setVoiceBeautifierPreset(I)I

    move-result p1

    return p1
.end method

.method public setupLocalSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupLocalSubStreamVideoCanvas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setupLocalSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I

    move-result p1

    return p1
.end method

.method public setupLocalVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupLocalVideoCanvas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setupLocalVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I

    move-result p1

    return p1
.end method

.method public setupRemoteSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "render",
            "uid"
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupRemoteSubStreamVideoCanvas render: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setupRemoteSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I

    move-result p1

    return p1
.end method

.method public setupRemoteVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "render",
            "uid"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupRemoteVideoCanvas render: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->setupRemoteVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I

    move-result p1

    return p1
.end method

.method public startAudioDump()I
    .locals 1

    const-string v0, "startAudioDump"

    .line 587
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->startAudioDump()I

    move-result v0

    return v0
.end method

.method public startAudioDumpWithType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dumpType"
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAudioDumpWithType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->startAudioDumpWithType(I)I

    move-result p1

    return p1
.end method

.method public startAudioMixing(Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAudioMixing, path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteAudioMixingOption(Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;)Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->startAudioMixing(Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;)I

    move-result p1

    return p1
.end method

.method public startAudioRecording(Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "sampleRate",
            "quality"
        }
    .end annotation

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAudioRecording filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,sampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/LiteEngine;->startAudioRecording(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public startAudioRecordingWithConfig(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioRecordConfig"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "NERtcImpl"

    const-string v0, "startAudioRecordingWithConfig invalid param"

    .line 1480
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;->recordFilePath:Ljava/lang/String;

    iget v3, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;->recordSampleRate:I

    iget v4, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;->recordQuality:I

    iget-object v0, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;->recordPosition:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    const/4 v5, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;->recordPosition:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

    .line 1485
    invoke-virtual {v0}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;->ordinal()I

    move-result v0

    :goto_0
    iget-object v6, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;->recordCycleTime:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;->recordCycleTime:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

    .line 1486
    invoke-virtual {p1}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;->getValue()I

    move-result p1

    move v6, p1

    :goto_1
    move v5, v0

    .line 1483
    invoke-virtual/range {v1 .. v6}, Lcom/netease/yunxin/lite/LiteEngine;->startAudioRecordingWithConfig(Ljava/lang/String;IIII)I

    move-result p1

    return p1
.end method

.method public startBeauty()I
    .locals 9

    const-string v0, "NERtcImpl"

    const-string v1, "startBeauty"

    .line 1671
    invoke-direct {p0, v1}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x7535

    if-eqz v2, :cond_0

    return v3

    .line 1675
    :cond_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/netease/yunxin/lite/util/BeautyFileUtil;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1678
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/yunxin/lite/util/BeautyFileUtil;->copyModelFiles(Landroid/content/Context;)V

    .line 1680
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "assetsVersion"

    invoke-static {v4, v5}, Lcom/netease/yunxin/lite/util/BeautyFileUtil;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1681
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1684
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "5.4.101"

    if-eqz v6, :cond_1

    .line 1685
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1686
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 1687
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1688
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1689
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v4

    goto :goto_0

    .line 1692
    :cond_1
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1693
    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x1

    .line 1701
    :goto_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "beauty"

    invoke-static {v6, v7, v5}, Lcom/netease/yunxin/lite/util/BeautyFileUtil;->copyAllFiles(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 1702
    new-instance v5, Ljava/io/File;

    const-string v6, "model.dat"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "startBeauty model.dat not prepared"

    .line 1705
    invoke-static {v0, v5}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1709
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "startBeauty beauty template not prepared"

    .line 1710
    invoke-static {v0, v5}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startBeauty "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x7536

    :goto_1
    if-eqz v3, :cond_4

    .line 1718
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/netease/yunxin/lite/LiteEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    goto :goto_2

    .line 1720
    :cond_4
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/netease/yunxin/lite/LiteEngine;->initBeauty(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 1722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBeauty initBeauty failed, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :cond_5
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/netease/yunxin/lite/LiteEngine;->enableBeauty(Z)I

    move-result v3

    if-eqz v3, :cond_6

    .line 1726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBeauty enableBeauty failed, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return v3
.end method

.method public startChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startChannelMediaRelay config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->startChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I

    move-result p1

    return p1
.end method

.method public startLastmileProbeTest(Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLastmileProbeTest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->startLastmileProbeTest(Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;)I

    move-result p1

    return p1
.end method

.method public startScreenCapture(Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenConfig",
            "intent",
            "callback"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, "NERtcImpl"

    const-string p2, "startScreenCapture error invalid param! intent is null"

    .line 697
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7533

    return p1

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScreenCapture screenConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x7535

    return p1

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->startScreenCapture(Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I

    move-result p1

    return p1
.end method

.method public startVideoPreview()I
    .locals 1

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->startVideoPreview(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result v0

    return v0
.end method

.method public startVideoPreview(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideoPreview streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->startPreview(I)I

    move-result p1

    return p1
.end method

.method public stopAllEffects()I
    .locals 1

    const-string v0, "stopAllEffects"

    .line 1151
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->stopAllEffects()I

    move-result v0

    return v0
.end method

.method public stopAudioDump()I
    .locals 1

    const-string v0, "stopAudioDump"

    .line 603
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->stopAudioDump()I

    move-result v0

    return v0
.end method

.method public stopAudioMixing()I
    .locals 1

    const-string v0, "stopAudioMixing"

    .line 1055
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->stopAudioMixing()I

    move-result v0

    return v0
.end method

.method public stopAudioRecording()I
    .locals 1

    const-string v0, "stopAudioRecording"

    .line 1491
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->stopAudioRecording()I

    move-result v0

    return v0
.end method

.method public stopBeauty()V
    .locals 2

    const-string v0, "stopBeauty"

    .line 1735
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NERtcImpl"

    const-string v1, "stopBeauty failed, mMainChannel is null"

    .line 1736
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->destroyBeauty()I

    return-void
.end method

.method public stopChannelMediaRelay()I
    .locals 1

    const-string v0, "stopChannelMediaRelay"

    .line 1539
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->stopChannelMediaRelay()I

    move-result v0

    return v0
.end method

.method public stopEffect(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopEffect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->stopEffect(I)I

    move-result p1

    return p1
.end method

.method public stopLastmileProbeTest()I
    .locals 1

    const-string v0, "stopLastmileProbeTest"

    .line 1608
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->stopLastmileProbeTest()I

    move-result v0

    return v0
.end method

.method public stopScreenCapture()V
    .locals 1

    const-string v0, "stopScreenCapture"

    .line 709
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->stopScreenCapture()V

    return-void
.end method

.method public stopVideoPreview()I
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->stopVideoPreview(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result v0

    return v0
.end method

.method public stopVideoPreview(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoPreview streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->stopPreview(I)I

    move-result p1

    return p1
.end method

.method public subscribeAllRemoteAudioStreams(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscribe"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeAllRemoteAudioStreams subscribe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->subscribeAllRemoteAudioStreams(Z)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteAudioStream(JZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeRemoteAudioStream uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,subscribe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->subscribeRemoteAudioStream(JZ)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteData(ZJ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subscribe",
            "userID"
        }
    .end annotation

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeRemoteData subscribe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , userID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->subscribeRemoteData(ZJ)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteSubStreamAudio(JZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeRemoteSubStreamAudio uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,subscribe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->subscribeRemoteSubStreamAudio(JZ)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteSubStreamVideo(JZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeRemoteSubStreamVideo, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " subscribe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->subscribeRemoteSubStreamVideo(JZ)I

    move-result p1

    return p1
.end method

.method public subscribeRemoteVideoStream(JLcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "streamType",
            "subscribe"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeRemoteVideoStream uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subscribe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->subscribeRemoteVideoStream(JLcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;Z)I

    move-result p1

    return p1
.end method

.method public switchCamera()I
    .locals 1

    const-string v0, "switchCamera"

    .line 474
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7535

    return v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->switchCamera()I

    move-result v0

    return v0
.end method

.method public switchCameraWithPosition(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraPos"
        }
    .end annotation

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCameraWithPosition, pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->switchCameraWithPosition(I)I

    move-result p1

    return p1
.end method

.method public switchChannel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "channelName"
        }
    .end annotation

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchChannel token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,channelName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteSwitchParameter(Ljava/lang/String;Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->switchChannel(Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;)I

    move-result p1

    return p1
.end method

.method public switchChannel(Ljava/lang/String;Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channelName",
            "channelOptions"
        }
    .end annotation

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchChannel token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,channelName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channelOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getLiteSwitchParameter(Ljava/lang/String;Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/LiteEngine;->switchChannel(Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;)I

    move-result p1

    return p1
.end method

.method public takeLocalSnapshot(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "callback"
        }
    .end annotation

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeLocalSnapshot streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->takeLocalSnapshot(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I

    move-result p1

    return p1
.end method

.method public takeRemoteSnapshot(JLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "streamType",
            "callback"
        }
    .end annotation

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeRemoteSnapshot uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->takeRemoteSnapshot(JLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I

    move-result p1

    return p1
.end method

.method public updateChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateChannelMediaRelay config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->updateChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I

    move-result p1

    return p1
.end method

.method public updateLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskInfo",
            "updateLiveTaskCallback"
        }
    .end annotation

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLiveStreamTask taskInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \uff0ccallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->updateLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;)I

    move-result p1

    return p1
.end method

.method public updatePermissionKey(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "updatePermissionKey"

    .line 297
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7535

    return p1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0, p1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->updatePermissionKey(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public uploadSdkInfo()V
    .locals 1

    const-string v0, "uploadSdkInfo"

    .line 1374
    invoke-direct {p0, v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->checkUninitialized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcCore;->mMainChannel:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->uploadSdkInfo()I

    return-void
.end method
