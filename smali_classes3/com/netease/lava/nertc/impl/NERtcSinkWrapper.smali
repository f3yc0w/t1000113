.class public Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;
.super Ljava/lang/Object;
.source "NERtcSinkWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/LiteSDKEngineSink;
.implements Lcom/netease/yunxin/lite/model/LiteSDKProbeEngineSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NERtcSinkWrapper"


# instance fields
.field private volatile mAudioProcessObserver:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;

.field private mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field private mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field private mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

.field private mIsMainChannel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 46
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 47
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    .line 48
    iput-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mAudioProcessObserver:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;

    return-void
.end method

.method static synthetic lambda$OnAudioDeviceError$26(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalSdkAudioDeviceType",
            "finalSdkAudioDeviceError"
        }
    .end annotation

    .line 355
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioDeviceStateChange(II)V

    return-void
.end method

.method static synthetic lambda$OnMediaRelayDidReceiveEvent$96(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "event",
            "errorCode",
            "destChannelName"
        }
    .end annotation

    .line 878
    invoke-interface {p0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onMediaRelayReceiveEvent(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$OnMediaRelayStateDidChange$94(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "state",
            "destChannelName"
        }
    .end annotation

    .line 867
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onMediaRelayStatesChange(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$OnRejoin$84(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "result",
            "channelId"
        }
    .end annotation

    .line 804
    invoke-interface {p0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onReJoinChannel(IJ)V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "result",
            "channelId",
            "rtt",
            "userId"
        }
    .end annotation

    .line 77
    invoke-interface/range {p0 .. p7}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onJoinChannel(IJJJ)V

    return-void
.end method

.method static synthetic lambda$null$24(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalSdkAudioDeviceType",
            "finalSdkAudioDeviceState"
        }
    .end annotation

    .line 318
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioDeviceStateChange(II)V

    return-void
.end method

.method static synthetic lambda$null$49(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "state",
            "reason"
        }
    .end annotation

    .line 556
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->liteChannelStateToSDK(I)I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onConnectionStateChanged(II)V

    return-void
.end method

.method static synthetic lambda$null$51(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalState"
        }
    .end annotation

    .line 573
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onVideoDeviceStageChange(I)V

    return-void
.end method

.method static synthetic lambda$onApiCallExecuted$81(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "apiName",
            "result",
            "message"
        }
    .end annotation

    .line 782
    invoke-interface {p0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onApiCallExecuted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAudioDeviceRoutingChanged$23(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalDevice"
        }
    .end annotation

    .line 283
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioDeviceChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioEffectFinished$72(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "effectId"
        }
    .end annotation

    .line 729
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioEffectFinished(I)V

    return-void
.end method

.method static synthetic lambda$onAudioEffectTimestampUpdate$73(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "effectId",
            "timestamp"
        }
    .end annotation

    int-to-long v0, p1

    .line 738
    invoke-interface {p0, v0, v1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioEffectTimestampUpdate(JJ)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$57(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x0

    .line 661
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$58(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x1

    .line 666
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$59(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x2

    .line 669
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$60(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x3

    .line 672
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$61(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x4

    .line 675
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$62(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x5

    .line 678
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$63(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x6

    .line 681
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$64(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x7

    .line 684
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$65(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/16 v0, 0x8

    .line 687
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$66(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/16 v0, 0x9

    .line 690
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$67(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/16 v0, 0xa

    .line 693
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$68(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/16 v0, 0xb

    .line 696
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$69(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/16 v0, 0xc

    .line 699
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingStateChanged$70(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    const/16 v0, 0xd

    .line 702
    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onAudioMixingTimestampUpdate$71(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "timestamp"
        }
    .end annotation

    .line 720
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioMixingTimestampUpdate(J)V

    return-void
.end method

.method static synthetic lambda$onAudioRecording$27(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "code",
            "filePath"
        }
    .end annotation

    .line 364
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onAudioRecording(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCameraExposureChanged$55(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 613
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onCameraExposureChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic lambda$onCameraFocusChanged$54(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 602
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onCameraFocusChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic lambda$onDisconnect$7(Lcom/netease/lava/nertc/sdk/NERtcCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "reason"
        }
    .end annotation

    .line 100
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onDisconnect(I)V

    return-void
.end method

.method static synthetic lambda$onError$77(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "errorCode"
        }
    .end annotation

    .line 760
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onError(I)V

    return-void
.end method

.method static synthetic lambda$onLeave$5(Lcom/netease/lava/nertc/sdk/NERtcCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "result"
        }
    .end annotation

    .line 89
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onLeaveChannel(I)V

    return-void
.end method

.method static synthetic lambda$onLiveStreamState$75(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "taskId",
            "url",
            "stateCode"
        }
    .end annotation

    .line 749
    invoke-interface {p0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onLiveStreamState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onLocalAudioVolumeIndication$30(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "volume",
            "vadFlag"
        }
    .end annotation

    .line 385
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onLocalAudioVolumeIndication(I)V

    .line 386
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onLocalAudioVolumeIndication(IZ)V

    return-void
.end method

.method static synthetic lambda$onLocalVideoEncoderWatermarkState$100(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "streamType",
            "state"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 908
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onLocalVideoWatermarkState(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;I)V

    return-void
.end method

.method static synthetic lambda$onMediaRightDidChanged$98(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "isAudioBannedByServer",
            "isVideoBannedByServer"
        }
    .end annotation

    .line 889
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onMediaRightChange(ZZ)V

    return-void
.end method

.method static synthetic lambda$onNetworkTypeChanged$56(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "type"
        }
    .end annotation

    .line 624
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onConnectionTypeChanged(I)V

    return-void
.end method

.method static synthetic lambda$onPermissionKeyWillExpire$111(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    .line 972
    invoke-interface {p0}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onPermissionKeyWillExpire()V

    return-void
.end method

.method static synthetic lambda$onProbeNetworkQuality$113(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "quality"
        }
    .end annotation

    .line 989
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onLastmileQuality(I)V

    return-void
.end method

.method static synthetic lambda$onProbeResult$114(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Lcom/netease/lava/nertc/sdk/LastmileProbeResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalProbeResult"
        }
    .end annotation

    .line 1020
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onLastmileProbeResult(Lcom/netease/lava/nertc/sdk/LastmileProbeResult;)V

    return-void
.end method

.method static synthetic lambda$onPublishFallbackToAudioOnly$88(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "isFallback",
            "isMainStream"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 827
    sget-object p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onLocalPublishFallbackToAudioOnly(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    return-void
.end method

.method static synthetic lambda$onReceiveSEIMessage$92(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "user_id",
            "data"
        }
    .end annotation

    .line 856
    invoke-interface {p0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onRecvSEIMsg(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onRemoteAudioVolumeIndication$32(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "infos",
            "total_volume"
        }
    .end annotation

    long-to-int p3, p2

    .line 408
    invoke-interface {p0, p1, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onRemoteAudioVolumeIndication([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;I)V

    return-void
.end method

.method static synthetic lambda$onSubscribeFallbackToAudioOnly$90(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "isFallback",
            "isMainStream"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 840
    sget-object p4, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onRemoteSubscribeFallbackToAudioOnly(JZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    return-void
.end method

.method static synthetic lambda$onUpdatePermissionKey$112(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "data",
            "errorCode",
            "timeout_interval"
        }
    .end annotation

    long-to-int p4, p3

    .line 980
    invoke-interface {p0, p1, p2, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUpdatePermissionKey(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic lambda$onUserDataBufferedAmountChanged$110(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "previousAmount"
        }
    .end annotation

    .line 964
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserDataBufferedAmountChanged(JJ)V

    return-void
.end method

.method static synthetic lambda$onUserDataReceiveMessage$106(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/nio/ByteBuffer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "bufferData",
            "bufferSize"
        }
    .end annotation

    .line 942
    invoke-interface/range {p0 .. p5}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserDataReceiveMessage(JLjava/nio/ByteBuffer;J)V

    return-void
.end method

.method static synthetic lambda$onUserDataStart$102(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 921
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserDataStart(J)V

    return-void
.end method

.method static synthetic lambda$onUserDataStateChanged$108(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 953
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserDataStateChanged(J)V

    return-void
.end method

.method static synthetic lambda$onUserDataStop$104(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 932
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserDataStop(J)V

    return-void
.end method

.method static synthetic lambda$onUserFirstAudioDataReceived$20(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 244
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onFirstAudioDataReceived(J)V

    return-void
.end method

.method static synthetic lambda$onUserFirstAudioFrameDecoded$22(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 255
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onFirstAudioFrameDecoded(J)V

    return-void
.end method

.method static synthetic lambda$onUserJoin$11(Lcom/netease/lava/nertc/sdk/NERtcCallback;JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "joinExtraInfo"
        }
    .end annotation

    .line 119
    invoke-interface {p0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserJoined(JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V

    return-void
.end method

.method static synthetic lambda$onUserJoin$9(Lcom/netease/lava/nertc/sdk/NERtcCallback;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 114
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserJoined(J)V

    return-void
.end method

.method static synthetic lambda$onUserLeave$13(Lcom/netease/lava/nertc/sdk/NERtcCallback;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "reason"
        }
    .end annotation

    .line 132
    invoke-interface {p0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserLeave(JI)V

    return-void
.end method

.method static synthetic lambda$onUserLeave$15(Lcom/netease/lava/nertc/sdk/NERtcCallback;JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "reason",
            "leaveExtraInfo"
        }
    .end annotation

    .line 137
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserLeave(JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V

    return-void
.end method

.method static synthetic lambda$onUserRoleChanged$86(Lcom/netease/lava/nertc/sdk/NERtcCallback;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "oldRole",
            "newRole"
        }
    .end annotation

    .line 815
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onClientRoleChange(II)V

    return-void
.end method

.method static synthetic lambda$onUserVideoStop$40(Lcom/netease/lava/nertc/sdk/NERtcCallback;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 487
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserVideoStop(J)V

    return-void
.end method

.method static synthetic lambda$onUserVideoStop$42(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId"
        }
    .end annotation

    .line 494
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserSubStreamVideoStop(J)V

    return-void
.end method

.method static synthetic lambda$onVideoDeviceError$53(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalState"
        }
    .end annotation

    .line 592
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onVideoDeviceStageChange(I)V

    return-void
.end method

.method static synthetic lambda$onVirtualBackgroundSourceEnabled$99(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "enabled",
            "reason"
        }
    .end annotation

    .line 898
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onVirtualBackgroundSourceEnabled(ZI)V

    return-void
.end method

.method static synthetic lambda$onWarning$79(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "warningCode"
        }
    .end annotation

    .line 771
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onWarning(I)V

    return-void
.end method

.method private liteNetWorkToSDK(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newType"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 648
    :pswitch_0
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_UNKNOWN:I

    return p1

    .line 645
    :pswitch_1
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_NONE:I

    return p1

    .line 643
    :pswitch_2
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_BLUETOOTH:I

    return p1

    .line 641
    :pswitch_3
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_5G:I

    return p1

    .line 639
    :pswitch_4
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_4G:I

    return p1

    .line 637
    :pswitch_5
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_3G:I

    return p1

    .line 635
    :pswitch_6
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_2G:I

    return p1

    .line 633
    :pswitch_7
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_WIFI:I

    return p1

    .line 631
    :pswitch_8
    sget p1, Lcom/netease/lava/nertc/sdk/NERtcConstants$ConnectionType;->CONNECTION_ETHERNET:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "task"
        }
    .end annotation

    .line 1049
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1050
    invoke-interface {p2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;->reportEvent()V

    .line 1052
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object p2

    const-string v2, "NERtcSinkWrapper"

    if-nez p2, :cond_0

    const-string p1, "report Notify event failed, main channel is null."

    .line 1053
    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1056
    :cond_0
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/NERtcCore;->getMainChannel()Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->getLiteEngine()Lcom/netease/yunxin/lite/LiteEngine;

    move-result-object p2

    .line 1057
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p2, p1, v3, v4}, Lcom/netease/yunxin/lite/LiteEngine;->reportNotifyConsEvent(Ljava/lang/String;J)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1059
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "report failed, ret \uff1a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 1025
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1031
    :cond_0
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    goto :goto_0

    .line 1028
    :cond_1
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public OnAudioDeviceError(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "type",
            "error"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAudioDeviceError, deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", type:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", error:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NERtcSinkWrapper"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eq p2, p1, :cond_0

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected value: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    const/4 v0, 0x4

    if-eq p3, v1, :cond_2

    if-eq p3, p1, :cond_3

    if-eq p3, v0, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_3

    return-void

    :cond_2
    const/4 v0, 0x3

    .line 351
    :cond_3
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_4

    .line 355
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ncJr3RqIhcZn9URyW_3iX2yX5Ok;

    invoke-direct {p3, p1, p2, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ncJr3RqIhcZn9URyW_3iX2yX5Ok;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public OnAudioDeviceStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "type",
            "state"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAudioDeviceStateChanged, deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", type:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NERtcSinkWrapper"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eq p2, p1, :cond_0

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected value: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_3

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 314
    :cond_3
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p3, :cond_4

    .line 318
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$hj3aipNg3wS-DQrVPTtUataUNFw;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$hj3aipNg3wS-DQrVPTtUataUNFw;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public OnMediaRelayDidReceiveEvent(IILjava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "errorCode",
            "destChannelName",
            "destUid"
        }
    .end annotation

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnMediaRelayDidReceiveEvent, event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destChannelName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "NERtcSinkWrapper"

    invoke-static {p5, p4}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 875
    iget-object p5, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p5, :cond_0

    .line 876
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IILjava/lang/String;)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 877
    iget-boolean p5, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p5, :cond_1

    .line 878
    new-instance p5, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zhra4h-CsRzuUkbQ-uWjmZetkxw;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zhra4h-CsRzuUkbQ-uWjmZetkxw;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IILjava/lang/String;)V

    invoke-static {p5}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OnMediaRelayStateDidChange(ILjava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "destChannelName",
            "destUid"
        }
    .end annotation

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnMediaRelayStateDidChange, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destChannelName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", destUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "NERtcSinkWrapper"

    invoke-static {p4, p3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 864
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p4, :cond_0

    .line 865
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ol9K52KipQZnYen3nDpwHvkdDIE;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ol9K52KipQZnYen3nDpwHvkdDIE;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ILjava/lang/String;)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 866
    iget-boolean p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p4, :cond_1

    .line 867
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;

    invoke-direct {p4, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ILjava/lang/String;)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OnRejoin(IJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "channelId",
            "userId"
        }
    .end annotation

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnRejoin, result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "NERtcSinkWrapper"

    invoke-static {p5, p4}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 801
    iget-object p5, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p5, :cond_0

    .line 802
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OWLfBDXvpO5od0K-q0HqPAPahm8;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OWLfBDXvpO5od0K-q0HqPAPahm8;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJ)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 803
    iget-boolean p5, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p5, :cond_1

    .line 804
    new-instance p5, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IJ)V

    invoke-static {p5}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OnRejoinStart(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelId",
            "userId"
        }
    .end annotation

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnRejoinStart, channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 790
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 791
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$KUASCP8_IZV_uogupPNOt-OPlMg;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$KUASCP8_IZV_uogupPNOt-OPlMg;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JJ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 792
    iget-boolean p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p1, :cond_1

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$OrG9YwSo0ubElTn-RmX3TwYcRbc;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$OrG9YwSo0ubElTn-RmX3TwYcRbc;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isMainChannel()Z
    .locals 1

    .line 1040
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    return v0
.end method

.method public synthetic lambda$OnAudioDeviceStateChanged$25$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalSdkAudioDeviceType",
            "finalSdkAudioDeviceState"
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$S3XwZa0cC8L_coIj2E0H8lsOq30;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$S3XwZa0cC8L_coIj2E0H8lsOq30;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V

    const-string p1, "OnAudioDeviceStateChanged"

    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V

    return-void
.end method

.method public synthetic lambda$OnMediaRelayDidReceiveEvent$95$NERtcSinkWrapper(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "event",
            "errorCode",
            "destChannelName"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onMediaRelayReceiveEvent(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$OnMediaRelayStateDidChange$93$NERtcSinkWrapper(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "state",
            "destChannelName"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onMediaRelayStatesChange(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$OnRejoin$83$NERtcSinkWrapper(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "result",
            "channelId"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onReJoinChannel(IJ)V

    return-void
.end method

.method public synthetic lambda$OnRejoinStart$82$NERtcSinkWrapper(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "channelId",
            "userId"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onReconnectingStart(JJ)V

    return-void
.end method

.method public synthetic lambda$null$0$NERtcSinkWrapper(IJJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "result",
            "channelId",
            "rtt",
            "userId"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onJoinChannel(IJJJ)V

    return-void
.end method

.method public synthetic lambda$null$47$NERtcSinkWrapper(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "state",
            "reason"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->liteChannelStateToSDK(I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onConnectionStateChanged(II)V

    return-void
.end method

.method public synthetic lambda$onApiCallExecuted$80$NERtcSinkWrapper(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "apiName",
            "result",
            "message"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onApiCallExecuted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onAudioHasHowling$28$NERtcSinkWrapper(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "flag"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mAudioProcessObserver:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;->onAudioHasHowling(Z)V

    return-void
.end method

.method public synthetic lambda$onChannelStateChanged$48$NERtcSinkWrapper(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "state",
            "reason"
        }
    .end annotation

    .line 554
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;II)V

    const-string p1, "OnChannelStateChanged"

    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V

    return-void
.end method

.method public synthetic lambda$onChannelStateChanged$50$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "state",
            "reason"
        }
    .end annotation

    .line 556
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$mLiH5wwUIEMWJLCS1rZiz8881ro;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$mLiH5wwUIEMWJLCS1rZiz8881ro;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V

    const-string p1, "OnChannelStateChanged"

    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V

    return-void
.end method

.method public synthetic lambda$onDisconnect$6$NERtcSinkWrapper(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "reason"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onDisconnect(I)V

    return-void
.end method

.method public synthetic lambda$onError$76$NERtcSinkWrapper(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onError(I)V

    return-void
.end method

.method public synthetic lambda$onJoin$1$NERtcSinkWrapper(IJJJ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "result",
            "channelId",
            "rtt",
            "userId"
        }
    .end annotation

    .line 73
    new-instance v9, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zRwZMy9wXzv6hkLsXep5Q7W2mME;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zRwZMy9wXzv6hkLsXep5Q7W2mME;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJJJ)V

    const-string v0, "OnJoin"

    invoke-direct {p0, v0, v9}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V

    return-void
.end method

.method public synthetic lambda$onJoin$3$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "result",
            "channelId",
            "rtt",
            "userId"
        }
    .end annotation

    .line 77
    new-instance v9, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V

    const-string v0, "OnJoin"

    move-object v1, p0

    invoke-direct {p0, v0, v9}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V

    return-void
.end method

.method public synthetic lambda$onLeave$4$NERtcSinkWrapper(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "result"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onLeaveChannel(I)V

    return-void
.end method

.method public synthetic lambda$onLiveStreamState$74$NERtcSinkWrapper(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "taskId",
            "url",
            "stateCode"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onLiveStreamState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$onLocalAudioVolumeIndication$29$NERtcSinkWrapper(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "volume",
            "vadFlag"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onLocalAudioVolumeIndication(I)V

    .line 381
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onLocalAudioVolumeIndication(IZ)V

    return-void
.end method

.method public synthetic lambda$onMediaRightDidChanged$97$NERtcSinkWrapper(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "isAudioBannedByServer",
            "isVideoBannedByServer"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onMediaRightChange(ZZ)V

    return-void
.end method

.method public synthetic lambda$onPublishFallbackToAudioOnly$87$NERtcSinkWrapper(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "isFallback",
            "isMainStream"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onLocalPublishFallbackToAudioOnly(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    return-void
.end method

.method public synthetic lambda$onReceiveSEIMessage$91$NERtcSinkWrapper(JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "user_id",
            "data"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onRecvSEIMsg(JLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onRemoteAudioVolumeIndication$31$NERtcSinkWrapper([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "infos",
            "total_volume"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    long-to-int p3, p2

    invoke-interface {v0, p1, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onRemoteAudioVolumeIndication([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;I)V

    return-void
.end method

.method public synthetic lambda$onSubscribeFallbackToAudioOnly$89$NERtcSinkWrapper(JZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "isFallback",
            "isMainStream"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p4, :cond_0

    sget-object p4, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    :goto_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onRemoteSubscribeFallbackToAudioOnly(JZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    return-void
.end method

.method public synthetic lambda$onUserAudioMute$17$NERtcSinkWrapper(IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "userId",
            "mute"
        }
    .end annotation

    if-nez p1, :cond_2

    .line 193
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserAudioMute(JZ)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 196
    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserAudioMute(JZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 202
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p1, :cond_3

    .line 203
    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserSubStreamAudioMute(JZ)V

    goto :goto_1

    .line 204
    :cond_3
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_4

    .line 205
    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserSubStreamAudioMute(JZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic lambda$onUserAudioStart$16$NERtcSinkWrapper(IJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "userId",
            "mute"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 147
    invoke-interface {v0, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserAudioStart(J)V

    if-eqz p4, :cond_0

    .line 149
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserAudioMute(JZ)V

    :cond_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    .line 155
    invoke-interface {v0, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserSubStreamAudioStart(J)V

    if-eqz p4, :cond_2

    .line 157
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserSubStreamAudioMute(JZ)V

    :cond_2
    return-void

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v2, :cond_6

    if-nez p1, :cond_5

    .line 167
    invoke-interface {v0, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserAudioStart(J)V

    .line 168
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    .line 169
    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserAudioMute(JZ)V

    :cond_4
    return-void

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_6

    if-ne p1, v1, :cond_6

    .line 175
    invoke-interface {v0, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserSubStreamAudioStart(J)V

    if-eqz p4, :cond_6

    .line 177
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserSubStreamAudioMute(JZ)V

    :cond_6
    return-void
.end method

.method public synthetic lambda$onUserAudioStop$18$NERtcSinkWrapper(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "userId"
        }
    .end annotation

    if-nez p1, :cond_2

    .line 218
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserAudioStop(J)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserAudioStop(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 227
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p1, :cond_3

    .line 228
    invoke-interface {p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserSubStreamAudioStop(J)V

    goto :goto_1

    .line 229
    :cond_3
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_4

    .line 230
    invoke-interface {p1, p2, p3}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserSubStreamAudioStop(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic lambda$onUserDataBufferedAmountChanged$109$NERtcSinkWrapper(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "previousAmount"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserDataBufferedAmountChanged(JJ)V

    return-void
.end method

.method public synthetic lambda$onUserDataReceiveMessage$105$NERtcSinkWrapper(JLjava/nio/ByteBuffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "bufferData",
            "bufferSize"
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserDataReceiveMessage(JLjava/nio/ByteBuffer;J)V

    return-void
.end method

.method public synthetic lambda$onUserDataStart$101$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserDataStart(J)V

    return-void
.end method

.method public synthetic lambda$onUserDataStateChanged$107$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserDataStateChanged(J)V

    return-void
.end method

.method public synthetic lambda$onUserDataStop$103$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserDataStop(J)V

    return-void
.end method

.method public synthetic lambda$onUserFirstAudioDataReceived$19$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onFirstAudioDataReceived(J)V

    return-void
.end method

.method public synthetic lambda$onUserFirstAudioFrameDecoded$21$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onFirstAudioFrameDecoded(J)V

    return-void
.end method

.method public synthetic lambda$onUserFirstVideoDataReceived$43$NERtcSinkWrapper(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "userId"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onFirstVideoDataReceived(J)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onFirstVideoDataReceived(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;J)V

    return-void
.end method

.method public synthetic lambda$onUserFirstVideoDataReceived$44$NERtcSinkWrapper(ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "callback",
            "userId"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 514
    invoke-interface {p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onFirstVideoDataReceived(J)V

    .line 516
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p1

    invoke-interface {p2, p1, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onFirstVideoDataReceived(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;J)V

    return-void
.end method

.method public synthetic lambda$onUserFirstVideoFrameDecoded$45$NERtcSinkWrapper(IJII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "userId",
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onFirstVideoFrameDecoded(JII)V

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object v2

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onFirstVideoFrameDecoded(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JII)V

    return-void
.end method

.method public synthetic lambda$onUserFirstVideoFrameDecoded$46$NERtcSinkWrapper(ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "callback",
            "userId",
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 536
    invoke-interface {p2, p3, p4, p5, p6}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onFirstVideoFrameDecoded(JII)V

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object v2

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onFirstVideoFrameDecoded(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JII)V

    return-void
.end method

.method public synthetic lambda$onUserJoin$10$NERtcSinkWrapper(JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "joinExtraInfo"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserJoined(JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V

    return-void
.end method

.method public synthetic lambda$onUserJoin$8$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserJoined(J)V

    return-void
.end method

.method public synthetic lambda$onUserLeave$12$NERtcSinkWrapper(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "reason"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserLeave(JI)V

    return-void
.end method

.method public synthetic lambda$onUserLeave$14$NERtcSinkWrapper(JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "reason",
            "leaveExtraInfo"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserLeave(JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V

    return-void
.end method

.method public synthetic lambda$onUserRoleChanged$85$NERtcSinkWrapper(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "oldRole",
            "newRole"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onClientRoleChange(II)V

    return-void
.end method

.method public synthetic lambda$onUserVideoMute$37$NERtcSinkWrapper(IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "userId",
            "mute"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserVideoMute(JZ)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V

    return-void
.end method

.method public synthetic lambda$onUserVideoMute$38$NERtcSinkWrapper(ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "streamType",
            "callback",
            "userId",
            "mute"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 472
    invoke-interface {p2, p3, p4, p5}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserVideoMute(JZ)V

    .line 474
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p1

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V

    return-void
.end method

.method public synthetic lambda$onUserVideoStart$33$NERtcSinkWrapper(JIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "profile",
            "mute",
            "streamType"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserVideoStart(JI)V

    if-eqz p4, :cond_0

    .line 425
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {p3, p1, p2, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserVideoMute(JZ)V

    .line 426
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-direct {p0, p5}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p5

    invoke-interface {p3, p5, p1, p2, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onUserVideoStart$34$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallback;JIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "profile",
            "mute",
            "streamType"
        }
    .end annotation

    .line 431
    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallback;->onUserVideoStart(JI)V

    if-eqz p5, :cond_0

    .line 432
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_0

    .line 433
    invoke-interface {p1, p2, p3, p5}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserVideoMute(JZ)V

    .line 434
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    invoke-direct {p0, p6}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p4

    invoke-interface {p1, p4, p2, p3, p5}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onUserVideoStart$35$NERtcSinkWrapper(JIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "userId",
            "profile",
            "mute",
            "streamType"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserSubStreamVideoStart(JI)V

    if-eqz p4, :cond_0

    .line 444
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-direct {p0, p5}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p5

    invoke-interface {p3, p5, p1, p2, p4}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onUserVideoStart$36$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "userId",
            "profile",
            "mute",
            "streamType"
        }
    .end annotation

    .line 449
    invoke-interface {p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserSubStreamVideoStart(JI)V

    if-eqz p5, :cond_0

    .line 451
    invoke-direct {p0, p6}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->toNeRtcVideoType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p4

    invoke-interface {p1, p4, p2, p3, p5}, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;->onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onUserVideoStop$39$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserVideoStop(J)V

    return-void
.end method

.method public synthetic lambda$onUserVideoStop$41$NERtcSinkWrapper(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "userId"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onUserSubStreamVideoStop(J)V

    return-void
.end method

.method public synthetic lambda$onVideoDeviceStateChanged$52$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "finalState"
        }
    .end annotation

    .line 573
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$hmx8A4MKEWwJEA-bVnAFnYDu9q4;

    invoke-direct {v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$hmx8A4MKEWwJEA-bVnAFnYDu9q4;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    const-string p1, "OnVideoDeviceStateChanged"

    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V

    return-void
.end method

.method public synthetic lambda$onWarning$78$NERtcSinkWrapper(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "warningCode"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;->onWarning(I)V

    return-void
.end method

.method public onApiCallExecuted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiName",
            "result",
            "message"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 779
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 780
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FVqmkmQ4NFJQO33UwqomR_g8MFI;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FVqmkmQ4NFJQO33UwqomR_g8MFI;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 781
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 782
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAudioDeviceRoutingChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioDeviceRoutingChanged routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 283
    :cond_3
    :goto_0
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3-hje6VNhbmlc_8zwg-vQ-fd9rg;

    invoke-direct {p1, v0, v1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3-hje6VNhbmlc_8zwg-vQ-fd9rg;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public onAudioEffectFinished(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioEffectFinished, effectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 729
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$MySyjzZMvQ7Pzy6Yx6dB-OZbR2Q;

    invoke-direct {v1, v0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$MySyjzZMvQ7Pzy6Yx6dB-OZbR2Q;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAudioEffectTimestampUpdate(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "timestamp"
        }
    .end annotation

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioEffectTimestampUpdate, effectId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 738
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Qwu2myYBat-VhV-shWG--SOgyfE;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Qwu2myYBat-VhV-shWG--SOgyfE;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IJ)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAudioHasHowling(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mAudioProcessObserver:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HOsFVwSpbNiSIQIj5oYeH6IUKuo;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HOsFVwSpbNiSIQIj5oYeH6IUKuo;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Z)V

    const-string p1, "OnAudioHasHowling"

    invoke-direct {p0, p1, v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->reportNotifyEvent(Ljava/lang/String;Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;)V

    :cond_0
    return-void
.end method

.method public onAudioMixingStateChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "errorCode"
        }
    .end annotation

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioMixingStateChanged, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 702
    :pswitch_0
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$f87NJ1Rj7dqi8gBLH4knqgx0nXM;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$f87NJ1Rj7dqi8gBLH4knqgx0nXM;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 699
    :pswitch_1
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Huq1IvWfESxI9Y4R_thb_azF_o0;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Huq1IvWfESxI9Y4R_thb_azF_o0;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 696
    :pswitch_2
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3hjF2DVoHA35poozYfnMVuUazrc;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3hjF2DVoHA35poozYfnMVuUazrc;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 693
    :pswitch_3
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$gfZ6efWgj2ezvAeJO5gxJvkML1o;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$gfZ6efWgj2ezvAeJO5gxJvkML1o;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 690
    :pswitch_4
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V_uSrvTPq3v25exnaajrCPJVZnw;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V_uSrvTPq3v25exnaajrCPJVZnw;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 687
    :pswitch_5
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_GxYF1pudY87qkewP42frfgxXlk;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_GxYF1pudY87qkewP42frfgxXlk;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 684
    :pswitch_6
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Qy4-bJkV52dIvQsu0V3tADXfhNI;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Qy4-bJkV52dIvQsu0V3tADXfhNI;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 681
    :pswitch_7
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j14NC2mNf22lBqf2feevdw6IkRs;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j14NC2mNf22lBqf2feevdw6IkRs;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 678
    :pswitch_8
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zJLkIl-Q3pQ-v1j-eH3Wwv8u1mY;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zJLkIl-Q3pQ-v1j-eH3Wwv8u1mY;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 675
    :pswitch_9
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WaiWmwNh-n8ATOb8xzzQRcJMiy8;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WaiWmwNh-n8ATOb8xzzQRcJMiy8;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 672
    :pswitch_a
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$M9vJUVCa--k7I2J7EQd--XcNV9Q;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$M9vJUVCa--k7I2J7EQd--XcNV9Q;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 669
    :pswitch_b
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$24BXbJ0l7c7hgAGTz_m-vzyDo9s;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$24BXbJ0l7c7hgAGTz_m-vzyDo9s;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 666
    :pswitch_c
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$KYDeKwCXZFtAFIWpxLJrlolw6fA;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$KYDeKwCXZFtAFIWpxLJrlolw6fA;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 661
    :cond_2
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$s4wm53u6vpl6U05xtzqZhJgVrfI;

    invoke-direct {p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$s4wm53u6vpl6U05xtzqZhJgVrfI;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioMixingTimestampUpdate(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 720
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$fNYoH4B5Nrkvm_nRgmkUTZm2UO8;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$fNYoH4B5Nrkvm_nRgmkUTZm2UO8;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAudioRecording(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "filePath"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioRecording, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1P4Mu4i8B8AamN-mgqRhOJd9Fds;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1P4Mu4i8B8AamN-mgqRhOJd9Fds;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCameraExposureChanged(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraExposureChanged left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v3, :cond_0

    .line 613
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;

    move-object v2, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IIII)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCameraFocusChanged(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraFocusChanged left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v3, :cond_0

    .line 602
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$BEkOrgwLrGREBh63_Ayd6KxmK-k;

    move-object v2, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$BEkOrgwLrGREBh63_Ayd6KxmK-k;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IIII)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onChannelStateChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "reason"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChannelStateChanged state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 553
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 554
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$n1me_eBNKrYpOVFI-PtGisbGf6U;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$n1me_eBNKrYpOVFI-PtGisbGf6U;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;II)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 555
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 556
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$M8BuR4SJhn04CoAPden1Aq8q1O4;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$M8BuR4SJhn04CoAPden1Aq8q1O4;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 97
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Y-5T-Hy-9okR24RRmUar03j-wmk;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Y-5T-Hy-9okR24RRmUar03j-wmk;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;I)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 99
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$NjNmk-he2B3M4FZBMTFlvO7KIYU;

    invoke-direct {v1, v0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$NjNmk-he2B3M4FZBMTFlvO7KIYU;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 757
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 758
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zipefhLjQMbQxQPXJ17iGXMkbDg;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$zipefhLjQMbQxQPXJ17iGXMkbDg;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;I)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 759
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 760
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$aKo4thviIwF5tnY1_6nVMgU4TQg;

    invoke-direct {v1, v0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$aKo4thviIwF5tnY1_6nVMgU4TQg;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onJoin(IJJIJLjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "channelId",
            "userId",
            "role",
            "rtt",
            "errMsg"
        }
    .end annotation

    move-object v10, p0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJoin result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,rtt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,errMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, v10, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 71
    iget-object v0, v10, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 72
    new-instance v11, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$uOWblim9pA0R2JnzI2AXGVB1ECw;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p7

    move-wide/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$uOWblim9pA0R2JnzI2AXGVB1ECw;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJJJ)V

    invoke-static {v11}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 75
    iget-boolean v0, v10, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 76
    new-instance v11, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;

    move-object v0, v11

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p7

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V

    invoke-static {v11}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLeave(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "channelId"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLeave result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NERtcSinkWrapper"

    invoke-static {p3, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 86
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p3, :cond_0

    .line 87
    new-instance p2, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E5gWx1x54QqqK_3fhyvQry_PpJc;

    invoke-direct {p2, p0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E5gWx1x54QqqK_3fhyvQry_PpJc;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;I)V

    invoke-static {p2}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 88
    iget-boolean p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p3, :cond_1

    .line 89
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_qkl39vfsC3sJfm7PXkvOIqSRJw;

    invoke-direct {p3, p2, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_qkl39vfsC3sJfm7PXkvOIqSRJw;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;I)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLiveStreamState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "url",
            "stateCode"
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLiveStreamState, taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stateCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 746
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 747
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sRpdtdwmvLl9PeqqiczVI1PtC58;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sRpdtdwmvLl9PeqqiczVI1PtC58;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 748
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 749
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-hueitPlLkMDoSliB8yntCuNTAo;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-hueitPlLkMDoSliB8yntCuNTAo;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLocalAudioVolumeIndication(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "volume",
            "vadFlag"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 378
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 379
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$X0roLMApJFGQPHj7whBhNxxFiN0;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$X0roLMApJFGQPHj7whBhNxxFiN0;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IZ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 383
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 384
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IZ)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLocalVideoEncoderWatermarkState(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "state"
        }
    .end annotation

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocalVideoEncoderWatermarkState, streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 908
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DVVWK6lMnn5MnO0tsLINklQVzSc;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DVVWK6lMnn5MnO0tsLINklQVzSc;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;II)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onMediaRightDidChanged(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isAudioBannedByServer",
            "isVideoBannedByServer"
        }
    .end annotation

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaRightDidChanged, isAudioBannedByServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoBannedByServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 886
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 887
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3W9UIJ12WANvICkxn97okG5yL0Q;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3W9UIJ12WANvICkxn97okG5yL0Q;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ZZ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 888
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 889
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$0hqZwf13Pp87h_xe_UvQp1wgm7s;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$0hqZwf13Pp87h_xe_UvQp1wgm7s;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZZ)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNetworkTypeChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newType"
        }
    .end annotation

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkTypeChanged, newType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->liteNetWorkToSDK(I)I

    move-result p1

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkTypeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/lava/nertc/impl/RtcConnectionType$-CC;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WmXCK0Mdn9BOuwR8koLpurMwlwk;

    invoke-direct {v1, v0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WmXCK0Mdn9BOuwR8koLpurMwlwk;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPermissionKeyWillExpire()V
    .locals 2

    const-string v0, "NERtcSinkWrapper"

    const-string v1, "onPermissionKeyWillExpire"

    .line 969
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 972
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$POR_VJbTdbXFDee_MTgimGqk1YM;

    invoke-direct {v1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$POR_VJbTdbXFDee_MTgimGqk1YM;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onProbeNetworkQuality(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProbeNetworkQuality, quality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 989
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sr9M85LB_igW_PaQwJr3_4-6kE8;

    invoke-direct {v1, v0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sr9M85LB_igW_PaQwJr3_4-6kE8;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onProbeResult(Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProbeResult, result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1000
    new-instance v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;

    invoke-direct {v2}, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;-><init>()V

    .line 1001
    iget v3, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->type:I

    int-to-short v3, v3

    iput-short v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->state:S

    .line 1002
    iget-wide v3, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->rtt:J

    long-to-int v4, v3

    iput v4, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->rtt:I

    .line 1003
    iget-object v3, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->upLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    if-eqz v3, :cond_0

    .line 1004
    new-instance v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    invoke-direct {v3}, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;-><init>()V

    iput-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->uplinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    .line 1005
    iget-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->uplinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v4, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->upLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    iget-wide v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->packetLossRate:J

    long-to-int v5, v4

    iput v5, v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    .line 1006
    iget-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->uplinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v4, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->upLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    iget-wide v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->availableBandwidth:J

    long-to-int v5, v4

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    .line 1007
    iget-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->uplinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v4, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->upLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    iget-wide v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->jitter:J

    long-to-int v5, v4

    iput v5, v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    .line 1009
    :cond_0
    iget-object v3, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->downLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    if-eqz v3, :cond_1

    .line 1010
    new-instance v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    invoke-direct {v3}, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;-><init>()V

    iput-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->downlinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    .line 1011
    iget-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->downlinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v4, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->downLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    iget-wide v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->packetLossRate:J

    long-to-int v5, v4

    iput v5, v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    .line 1012
    iget-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->downlinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v4, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->downLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    iget-wide v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->availableBandwidth:J

    long-to-int v5, v4

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    .line 1013
    iget-object v3, v2, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->downlinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object p1, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResult;->downLinkResult:Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;

    iget-wide v4, p1, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->jitter:J

    long-to-int p1, v4

    iput p1, v3, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    :cond_1
    if-eqz v2, :cond_2

    .line 1018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProbeResult, final result:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_2
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-53-QEdRAQ4VOvXTMwzwvGt2jZQ;

    invoke-direct {p1, v0, v2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-53-QEdRAQ4VOvXTMwzwvGt2jZQ;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Lcom/netease/lava/nertc/sdk/LastmileProbeResult;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onPublishFallbackToAudioOnly(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isFallback",
            "isMainStream"
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishFallbackToAudioOnly, isFallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMainStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 823
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 824
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ZZ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 826
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 827
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$IxBdGZoCKjzniLjiF_mCtrkuEWU;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$IxBdGZoCKjzniLjiF_mCtrkuEWU;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZZ)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceiveSEIMessage(JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "user_id",
            "data"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 853
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 854
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$f502cHsl1kKqalZF_Tmx1bYS1kQ;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$f502cHsl1kKqalZF_Tmx1bYS1kQ;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 855
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 856
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/lang/String;)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRemoteAudioVolumeIndication([Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "volumeInfo",
            "total_volume"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_2

    .line 394
    array-length v1, p1

    if-lez v1, :cond_2

    .line 395
    array-length v1, p1

    new-array v1, v1, [Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;

    .line 397
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, p1, v3

    .line 398
    new-instance v6, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;

    invoke-direct {v6}, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;-><init>()V

    .line 399
    iget v7, v5, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->uid:I

    int-to-long v7, v7

    iput-wide v7, v6, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;->uid:J

    .line 400
    iget v7, v5, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->volume:I

    iput v7, v6, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;->volume:I

    .line 401
    iget v5, v5, Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;->subStreamVolume:I

    iput v5, v6, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;->subStreamVolume:I

    .line 402
    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p1, :cond_1

    .line 406
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$6WIQHN5IDVTkrsA1tzBxkKqqQNM;

    invoke-direct {p1, p0, v1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$6WIQHN5IDVTkrsA1tzBxkKqqQNM;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;J)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 407
    iget-boolean p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p1, :cond_2

    .line 408
    new-instance p1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DgfDjs5AGoCw9D8aMVKclLj_XCo;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;J)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSubscribeFallbackToAudioOnly(JZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "isFallback",
            "isMainStream"
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscribeFallbackToAudioOnly, userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isFallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMainStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 836
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 837
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$pWN6Ves1nsSqqiu-MvhAAc2vG_k;

    move-object v4, v0

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$pWN6Ves1nsSqqiu-MvhAAc2vG_k;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JZZ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 839
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 840
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;

    move-object v2, v0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZZ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwitchChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelName",
            "result",
            "errMsg"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChannel, channelName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errMsg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NERtcSinkWrapper"

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdatePermissionKey(ILjava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "data",
            "timeout_interval"
        }
    .end annotation

    const-string v0, "NERtcSinkWrapper"

    const-string v1, "onUpdatePermissionKey"

    .line 977
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v3, :cond_0

    .line 980
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;

    move-object v2, v0

    move-object v4, p2

    move v5, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;IJ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onUserAudioMute(JZI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "mute",
            "streamType"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserAudioMute userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;

    move-object v2, v0

    move-object v3, p0

    move v4, p4

    move-wide v5, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJZ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserAudioStart(JZI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "mute",
            "streamType"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserAudioStart userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$0OsfSEiGuL_rbEHwC4pSGyh7VtU;

    move-object v2, v0

    move-object v3, p0

    move v4, p4

    move-wide v5, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$0OsfSEiGuL_rbEHwC4pSGyh7VtU;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJZ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserAudioStop(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "streamType"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserAudioStop userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3IFPSP8Tb53RZlqJ1dhjeL4AC3I;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$3IFPSP8Tb53RZlqJ1dhjeL4AC3I;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserDataBufferedAmountChanged(JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "previousAmount"
        }
    .end annotation

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserDataBufferedAmountChanged, userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , previousAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 961
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 962
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$8W8mJb3LzyBNJPhPF6ICvZiQLfc;

    move-object v4, v0

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$8W8mJb3LzyBNJPhPF6ICvZiQLfc;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JJ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 963
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 964
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;

    move-object v2, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JJ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserDataReceiveMessage(JLjava/nio/ByteBuffer;J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "bufferData",
            "bufferSize"
        }
    .end annotation

    .line 938
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 939
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 940
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JLjava/nio/ByteBuffer;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 941
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 942
    new-instance v7, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;

    move-object v0, v7

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/nio/ByteBuffer;J)V

    invoke-static {v7}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserDataStart(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserDataStart, userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 918
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 919
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$UUL9lWXIglNWqR7wfK2WjJ11fJM;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$UUL9lWXIglNWqR7wfK2WjJ11fJM;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 920
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 921
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$0DzG5WTaH4NmvADy5Lg9yBDX11E;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$0DzG5WTaH4NmvADy5Lg9yBDX11E;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserDataStateChanged(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserDataStateChanged, userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 950
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 951
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HhwHy98p8pqnv0_USWVOcXgDz4k;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HhwHy98p8pqnv0_USWVOcXgDz4k;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 952
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 953
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$5sJ9mbljQrfmgbiBrNO9ybYur7Q;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$5sJ9mbljQrfmgbiBrNO9ybYur7Q;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserDataStop(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserDataStop, userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 929
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 930
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wgZB01EmNL0MDzj-t1AdwjmerXo;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wgZB01EmNL0MDzj-t1AdwjmerXo;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 931
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 932
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$CTKo7uNWScTyqGiuWyMEiNuWcjQ;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$CTKo7uNWScTyqGiuWyMEiNuWcjQ;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserFirstAudioDataReceived(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "streamType"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserFirstAudioDataReceived userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NERtcSinkWrapper"

    invoke-static {v0, p3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 241
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 242
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sIghsyVtQmtOdKaADp-NVhEn-bg;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sIghsyVtQmtOdKaADp-NVhEn-bg;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 243
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 244
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$W-zS6KDjA06W4iAF3j2UnF_SJlQ;

    invoke-direct {v0, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$W-zS6KDjA06W4iAF3j2UnF_SJlQ;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserFirstAudioFrameDecoded(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "streamType"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserFirstAudioFrameDecoded userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NERtcSinkWrapper"

    invoke-static {v0, p3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 252
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 253
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$mjW4VpTrLlg9cbmuUl_wMk-RIRs;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$mjW4VpTrLlg9cbmuUl_wMk-RIRs;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 254
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$VpaSiaiak4tHVDRB_IshgZAjZIc;

    invoke-direct {v0, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$VpaSiaiak4tHVDRB_IshgZAjZIc;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserFirstVideoDataReceived(JI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "streamType"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserFirstVideoDataReceived userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v5, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 503
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$5-DSdn0LlBd3CoC-IXsrRa7es-0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$5-DSdn0LlBd3CoC-IXsrRa7es-0;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJ)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 511
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 512
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserFirstVideoFrameDecoded(JIII)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "streamType",
            "width",
            "height"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserFirstVideoFrameDecoded userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 526
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 527
    new-instance v8, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;

    move-object v0, v8

    move-object v1, p0

    move v2, p3

    move-wide v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJII)V

    invoke-static {v8}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 533
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 534
    new-instance v8, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;

    move-object v0, v8

    move-object v1, p0

    move v2, p3

    move-wide v4, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JII)V

    invoke-static {v8}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserFirstVideoFrameRender(JLjava/lang/String;JJI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "sourceId",
            "timeMs",
            "elapsedTime",
            "streamType"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserFirstVideoFrameRender, userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", sourceId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", timeMs:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", elapsedTime:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", streamType:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NERtcSinkWrapper"

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserJoin(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "userName",
            "custom_info"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserJoin userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,userName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ,custom_info: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NERtcSinkWrapper"

    invoke-static {v0, p3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 109
    new-instance v0, Lcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;-><init>()V

    .line 110
    iput-object p4, v0, Lcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;->customInfo:Ljava/lang/String;

    .line 111
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p4, :cond_0

    .line 112
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ksQKPh4VwUd-gyyarcET7AnR_Ns;

    invoke-direct {p4, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ksQKPh4VwUd-gyyarcET7AnR_Ns;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 113
    iget-boolean p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p4, :cond_1

    .line 114
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GCMwBz5fpd0yk8hWLn65PcNpwOI;

    invoke-direct {p4, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GCMwBz5fpd0yk8hWLn65PcNpwOI;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;J)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p4, :cond_2

    .line 117
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 118
    iget-boolean p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p4, :cond_3

    .line 119
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$pqEuoLoEueaXRhLm3qGA2G9V9Fk;

    invoke-direct {p4, p3, p1, p2, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$pqEuoLoEueaXRhLm3qGA2G9V9Fk;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onUserLeave(JILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "reason",
            "custom_info"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserLeave userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 127
    new-instance v9, Lcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;

    invoke-direct {v9}, Lcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;-><init>()V

    .line 128
    iput-object p4, v9, Lcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;->customInfo:Ljava/lang/String;

    .line 129
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p4, :cond_0

    .line 130
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JI)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 131
    iget-boolean p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p4, :cond_1

    .line 132
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;

    invoke-direct {p4, v3, p1, p2, p3}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;JI)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p4, :cond_2

    .line 135
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$f9dLgDvUKe8j7XDMGQBYGo53j2A;

    move-object v4, p4

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$f9dLgDvUKe8j7XDMGQBYGo53j2A;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 136
    iget-boolean p4, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p4, :cond_3

    .line 137
    new-instance p4, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;

    move-object v2, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V

    invoke-static {p4}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onUserRoleChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldRole",
            "newRole"
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserRoleChanged, oldRole:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newRole:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 812
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 813
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$J2TJ9uUMSy-rD9Y-PprsQfqHrfM;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$J2TJ9uUMSy-rD9Y-PprsQfqHrfM;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;II)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 814
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 815
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JtPKRzyH0w2b6-eIAwrXg6znW1U;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JtPKRzyH0w2b6-eIAwrXg6znW1U;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;II)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserVideoMute(JZI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "mute",
            "streamType"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserVideoMute userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 462
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 463
    new-instance v7, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$7SIGlrR7-MKmuQDZWTSvM1VT6uQ;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$7SIGlrR7-MKmuQDZWTSvM1VT6uQ;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJZ)V

    invoke-static {v7}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 469
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_1

    .line 470
    new-instance v7, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZ)V

    invoke-static {v7}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserVideoStart(JIIZIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "width",
            "height",
            "mute",
            "streamType",
            "isFakeVideo"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserVideoStart userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,isFakeVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const/4 p3, 0x6

    const/4 v5, 0x6

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {p3, p4}, Lcom/netease/yunxin/lite/LiteEngineCenter;->getBestVideoProfileType(II)I

    move-result p3

    move v5, p3

    :goto_0
    const/4 p3, 0x2

    if-ne p6, p3, :cond_2

    .line 420
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 421
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p3, :cond_1

    .line 422
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;

    move-object v0, p3

    move-object v1, p0

    move-wide v2, p1

    move v4, v5

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JIZI)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_4

    .line 429
    iget-boolean p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p3, :cond_4

    .line 430
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;

    move-object v0, p3

    move-object v1, p0

    move-wide v3, p1

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallback;JIZI)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x3

    if-ne p6, p3, :cond_4

    .line 439
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 440
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz p3, :cond_3

    .line 441
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Z6hhmY3-osbBAiynw1brG9gqQfM;

    move-object v0, p3

    move-object v1, p0

    move-wide v2, p1

    move v4, v5

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Z6hhmY3-osbBAiynw1brG9gqQfM;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JIZI)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 447
    iget-boolean p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz p3, :cond_4

    .line 448
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wb4Rc4qc3SQ_HHMKROhEIihzdNg;

    move-object v0, p3

    move-object v1, p0

    move-wide v3, p1

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wb4Rc4qc3SQ_HHMKROhEIihzdNg;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JIZI)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onUserVideoStop(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "streamType"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserVideoStop userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,streamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 483
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 484
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_0

    .line 485
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sdcyhcnDV3j7rCeD3PBSBqxY8U8;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sdcyhcnDV3j7rCeD3PBSBqxY8U8;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    .line 486
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_3

    .line 487
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$tn9Yv_0GdrjymlFmSALRcGWh57s;

    invoke-direct {v0, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$tn9Yv_0GdrjymlFmSALRcGWh57s;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 490
    iget-object p3, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 491
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v0, :cond_2

    .line 492
    new-instance p3, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Z-09_rqt5NCZxUIbU9g4hkE6sP0;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Z-09_rqt5NCZxUIbU9g4hkE6sP0;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V

    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 493
    iget-boolean v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v0, :cond_3

    .line 494
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AKsNq5ojLbvJd5ucG1A5LVyeO9Y;

    invoke-direct {v0, p3, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AKsNq5ojLbvJd5ucG1A5LVyeO9Y;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoDeviceError(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "deviceError"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoDeviceError deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,deviceError: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NERtcSinkWrapper"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-nez p2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 592
    :goto_0
    new-instance p2, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$mIWgbNYESZBAX9DLXvGML5fL_hI;

    invoke-direct {p2, p1, v0}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$mIWgbNYESZBAX9DLXvGML5fL_hI;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {p2}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onVideoDeviceStateChanged(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "deviceState"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoDeviceStateChanged deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,deviceState: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NERtcSinkWrapper"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    if-eq p2, v1, :cond_2

    .line 573
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onVirtualBackgroundSourceEnabled(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "reason"
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVirtualBackgroundSourceEnabled, enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    .line 898
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZI)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onWarning(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warningCode"
        }
    .end annotation

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWarning, warningCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 768
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    if-eqz v1, :cond_0

    .line 769
    new-instance v0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$bm5k-PcVV_iUNVDTm4Nc6HfwfAY;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$bm5k-PcVV_iUNVDTm4Nc6HfwfAY;-><init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;I)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 770
    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    if-eqz v1, :cond_1

    .line 771
    new-instance v1, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AA8JBF60cyNBe-PXvk1rIF97oCw;

    invoke-direct {v1, v0, p1}, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AA8JBF60cyNBe-PXvk1rIF97oCw;-><init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAudioProcessObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioProcessObserver"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mAudioProcessObserver:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;

    return-void
.end method

.method public setCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "isMainChannel"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    .line 53
    instance-of v0, p1, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mCallbackEx:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    .line 54
    iput-boolean p2, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mIsMainChannel:Z

    return-void
.end method

.method public setChannelCallback(Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelCallback"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->mChannelCallback:Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;

    return-void
.end method
