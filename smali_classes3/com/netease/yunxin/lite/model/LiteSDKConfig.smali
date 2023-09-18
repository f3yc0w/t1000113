.class public Lcom/netease/yunxin/lite/model/LiteSDKConfig;
.super Ljava/lang/Object;
.source "LiteSDKConfig.java"


# instance fields
.field public appKey:Ljava/lang/String;

.field public eglContext:Ljava/lang/Object;

.field public logDirPath:Ljava/lang/String;

.field public logLevel:I

.field public serverAddresses:Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->logLevel:I

    return-void
.end method

.method private getAppKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method private getLogDirPath()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->logDirPath:Ljava/lang/String;

    return-object v0
.end method

.method private getLogLevel()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->logLevel:I

    return v0
.end method


# virtual methods
.method public getEglContext()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getEglNativeContext()J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->eglContext:Ljava/lang/Object;

    instance-of v1, v0, Lcom/netease/lava/webrtc/EglBase$Context;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcom/netease/lava/webrtc/EglBase$Context;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase$Context;->getNativeEglContext()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getServerAddresses()Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKConfig;->serverAddresses:Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;

    return-object v0
.end method
