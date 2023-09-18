.class public abstract Lcom/netease/lava/nertc/sdk/NERtc;
.super Ljava/lang/Object;
.source "NERtc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1354
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkPermission(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/netease/lava/nertc/sdk/NERtc;
    .locals 1

    .line 36
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object v0

    return-object v0
.end method

.method public static version()Lcom/netease/lava/nertc/sdk/NERtcVersion;
    .locals 2

    .line 1290
    new-instance v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/NERtcVersion;-><init>()V

    const/16 v1, 0xa28

    .line 1291
    iput v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->versionCode:I

    const-string v1, "5.4.101"

    .line 1292
    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->versionName:Ljava/lang/String;

    const-string v1, "48d0907f31"

    .line 1293
    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildRevision:Ljava/lang/String;

    const-string v1, "Mon Jul 17 17:05:09 2023"

    .line 1294
    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildDate:Ljava/lang/String;

    const-string v1, "release"

    .line 1295
    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildType:Ljava/lang/String;

    const-string v1, "yunxin@Android-09"

    .line 1296
    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildHost:Ljava/lang/String;

    const-string v1, "HEAD"

    .line 1297
    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->buildBranch:Ljava/lang/String;

    const-string v1, "rev_unknown"

    .line 1298
    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/NERtcVersion;->engineRevision:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract enableLocalAudio(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableLocalVideo(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
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
.end method

.method public abstract enableLocalVideo(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcCallback;Lcom/netease/lava/nertc/sdk/NERtcOption;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appkey",
            "callback",
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract joinChannel(Ljava/lang/String;Ljava/lang/String;J)I
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
.end method

.method public abstract joinChannel(Ljava/lang/String;Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I
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
.end method

.method public abstract leaveChannel()I
.end method

.method public abstract release()V
.end method

.method public abstract setAudioProfile(II)I
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
.end method

.method public abstract setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureConfig"
        }
    .end annotation
.end method

.method public abstract setCameraCaptureConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
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
.end method

.method public abstract setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoConfig"
        }
    .end annotation
.end method

.method public abstract setLocalVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
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
.end method

.method public abstract setParameters(Lcom/netease/lava/nertc/sdk/NERtcParameters;)V
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
.end method

.method public abstract setupLocalVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation
.end method

.method public abstract setupRemoteVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I
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
.end method

.method public abstract startVideoPreview()I
.end method

.method public abstract startVideoPreview(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation
.end method

.method public abstract stopVideoPreview()I
.end method

.method public abstract stopVideoPreview(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation
.end method

.method public abstract subscribeAllRemoteAudioStreams(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscribe"
        }
    .end annotation
.end method

.method public abstract subscribeRemoteAudioStream(JZ)I
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
.end method

.method public abstract subscribeRemoteVideoStream(JLcom/netease/lava/nertc/sdk/video/NERtcRemoteVideoStreamType;Z)I
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
.end method

.method public abstract updatePermissionKey(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method
