.class public Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;
.super Lcom/netease/lava/nertc/sdk/NERtcLinkEngine;
.source "NERtcPstnImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/pstn/NERtcPstnImpl$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NERtcPstnImpl"


# instance fields
.field private linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

.field private mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

.field private final sinkWrapper:Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/NERtcLinkEngine;-><init>()V

    .line 28
    new-instance v0, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;

    invoke-direct {v0}, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->sinkWrapper:Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;

    const-string v0, "nertc_sdk"

    .line 36
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/nertc/pstn/NERtcPstnImpl$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl$SingletonHolder;->instance:Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;

    return-object v0
.end method

.method private getRtcSessionConfig()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;
    .locals 1

    .line 149
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/LiteEngine;->getRoomSessionInfo()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;-><init>()V

    return-object v0
.end method

.method private initPstn()I
    .locals 4

    .line 157
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;-><init>()V

    const/4 v1, 0x2

    .line 158
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;->mode:I

    .line 159
    iget-object v1, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->sinkWrapper:Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/LiteEngineCenter;->createLinkEngine(Lcom/netease/yunxin/lite/model/LiteSDKEngineConfig;Lcom/netease/yunxin/lite/model/LiteSDKLinkEngineSink;)Lcom/netease/yunxin/lite/LiteLinkEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 161
    new-instance v2, Lcom/netease/yunxin/lite/model/pstn/LinkEngineParameter;

    invoke-direct {v2}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineParameter;-><init>()V

    invoke-virtual {v0, v2}, Lcom/netease/yunxin/lite/LiteLinkEngine;->initialize(Lcom/netease/yunxin/lite/model/pstn/LinkEngineParameter;)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->getRtcSessionConfig()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/LiteLinkEngine;->setSessionConfig(Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;)I

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "context_delegate"

    .line 168
    iget-object v2, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "NERtcPstnImpl"

    const-string v2, "initPstn report put error!"

    .line 170
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setUpEngineWithContextInLinkEngine"

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/yunxin/lite/LiteLinkEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->sinkWrapper:Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;

    iget-object v1, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    invoke-virtual {v0, v1}, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->setLinkCallback(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;)V

    return v3

    :cond_2
    return v1
.end method

.method private isMainThread()Z
    .locals 2

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$xoJ-QCLp0hz2WEQ7uts_MhGfX-8(Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;)I
    .locals 0

    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->initPstn()I

    move-result p0

    return p0
.end method


# virtual methods
.method public directCallHangup()I
    .locals 2

    const-string v0, "NERtcPstnImpl"

    const-string v1, "direct call hang up."

    .line 135
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->getRtcSessionConfig()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/LiteLinkEngine;->directCallHangup(Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public directCallStartCall(Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callParam"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    const-string v1, "NERtcPstnImpl"

    if-nez v0, :cond_0

    const-string p1, "link engine is null."

    .line 73
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 v0, 0x4

    if-nez p1, :cond_1

    const-string p1, "callparam is null."

    .line 78
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "direct start call, callee = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "channelName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getChannelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", didNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getDidNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "uid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mediaType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getMediaType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isNumberEncrypted = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->isNumberEncrypted()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 119
    :cond_3
    new-instance v0, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setUid(J)V

    .line 121
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setToken(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/netease/yunxin/lite/util/SystemInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setDeviceId(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setCallee(Ljava/util/List;)V

    .line 124
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getMediaType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setCallMediaType(I)V

    .line 125
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setChannelName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setAppKey(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getDidNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setDidNumber(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setTraceId(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->isNumberEncrypted()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;->setNumberEncrypted(Z)V

    .line 130
    iget-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->getRtcSessionConfig()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/yunxin/lite/LiteLinkEngine;->directCallStartCall(Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    const-string v2, "direct start call, param is invaild."

    .line 96
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->getRtcSessionConfig()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/yunxin/lite/LiteLinkEngine;->setSessionConfig(Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;)I

    .line 98
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getCallee()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_1
    const-string v2, ""

    .line 102
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_7

    const-string v3, "(\\w{3})\\w*(\\w{4})"

    const-string v4, "$1****$2"

    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v3, "callee"

    .line 105
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channelName"

    .line 106
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    .line 107
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getUid()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "didNumber"

    .line 108
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getDidNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mediaType"

    .line 109
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getMediaType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "traceId"

    .line 110
    invoke-virtual {p1}, Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;->getTraceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    :goto_3
    iget-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    .line 115
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "directCallStartCallWithParam"

    .line 114
    invoke-virtual {p1, v2, v0, v1}, Lcom/netease/yunxin/lite/LiteLinkEngine;->reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    .line 56
    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->initPstn()I

    move-result v1

    goto :goto_1

    .line 59
    :cond_2
    new-instance p1, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcPstnImpl$xoJ-QCLp0hz2WEQ7uts_MhGfX-8;

    invoke-direct {p1, p0}, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcPstnImpl$xoJ-QCLp0hz2WEQ7uts_MhGfX-8;-><init>(Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    if-nez p1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x4

    :cond_4
    :goto_1
    return v1
.end method

.method public release()V
    .locals 2

    const-string v0, "NERtcPstnImpl"

    const-string v1, "release start."

    .line 185
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-static {v0}, Lcom/netease/yunxin/lite/LiteEngineCenter;->destroyLinkEngine(Lcom/netease/yunxin/lite/LiteLinkEngine;)V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->linkEngine:Lcom/netease/yunxin/lite/LiteLinkEngine;

    return-void
.end method
