.class public abstract Lcom/netease/lava/nertc/sdk/AbsNERtcCallbackEx;
.super Ljava/lang/Object;
.source "AbsNERtcCallbackEx.java"

# interfaces
.implements Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCallExecuted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public onAudioDeviceChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "selected"
        }
    .end annotation

    return-void
.end method

.method public onAudioDeviceStateChange(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceType",
            "deviceState"
        }
    .end annotation

    return-void
.end method

.method public onAudioEffectFinished(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation

    return-void
.end method

.method public onAudioMixingStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onAudioMixingTimestampUpdate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampMs"
        }
    .end annotation

    return-void
.end method

.method public onAudioRecording(ILjava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public onCameraExposureChanged(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    return-void
.end method

.method public onCameraFocusChanged(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    return-void
.end method

.method public onClientRoleChange(II)V
    .locals 0
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

    return-void
.end method

.method public onConnectionStateChanged(II)V
    .locals 0
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

    return-void
.end method

.method public onConnectionTypeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConnectionType"
        }
    .end annotation

    return-void
.end method

.method public abstract onDisconnect(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method

.method public onFirstAudioDataReceived(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onFirstAudioFrameDecoded(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    return-void
.end method

.method public onFirstVideoDataReceived(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onFirstVideoDataReceived(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onFirstVideoFrameDecoded(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public onFirstVideoFrameDecoded(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "userID",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public abstract onJoinChannel(IJJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "channelId",
            "elapsed",
            "uid"
        }
    .end annotation
.end method

.method public onLastmileProbeResult(Lcom/netease/lava/nertc/sdk/LastmileProbeResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    return-void
.end method

.method public onLastmileQuality(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    return-void
.end method

.method public abstract onLeaveChannel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public onLiveStreamState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "pushUrl",
            "liveState"
        }
    .end annotation

    return-void
.end method

.method public onLocalAudioVolumeIndication(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    return-void
.end method

.method public onLocalAudioVolumeIndication(IZ)V
    .locals 0
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

    return-void
.end method

.method public onLocalPublishFallbackToAudioOnly(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isFallback",
            "streamType"
        }
    .end annotation

    return-void
.end method

.method public onMediaRelayReceiveEvent(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "code",
            "channelName"
        }
    .end annotation

    return-void
.end method

.method public onMediaRelayStatesChange(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "channelName"
        }
    .end annotation

    return-void
.end method

.method public onMediaRightChange(ZZ)V
    .locals 0
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

    return-void
.end method

.method public onReJoinChannel(IJ)V
    .locals 0
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

    return-void
.end method

.method public onReconnectingStart()V
    .locals 0

    return-void
.end method

.method public onRecvSEIMsg(JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userID",
            "seiMsg"
        }
    .end annotation

    return-void
.end method

.method public onRemoteAudioVolumeIndication([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "volumeArray",
            "totalVolume"
        }
    .end annotation

    return-void
.end method

.method public onRemoteSubscribeFallbackToAudioOnly(JZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "isFallback",
            "streamType"
        }
    .end annotation

    return-void
.end method

.method public onUserAudioMute(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "muted"
        }
    .end annotation

    return-void
.end method

.method public abstract onUserAudioStart(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserAudioStop(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public onUserDataBufferedAmountChanged(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "previousAmount"
        }
    .end annotation

    return-void
.end method

.method public onUserDataReceiveMessage(JLjava/nio/ByteBuffer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "bufferData",
            "bufferSize"
        }
    .end annotation

    return-void
.end method

.method public onUserDataStart(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onUserDataStateChanged(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onUserDataStop(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public abstract onUserJoined(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserLeave(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "reason"
        }
    .end annotation
.end method

.method public onUserSubStreamAudioMute(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "muted"
        }
    .end annotation

    return-void
.end method

.method public onUserSubStreamAudioStart(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onUserSubStreamAudioStop(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onUserSubStreamVideoStart(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "maxProfile"
        }
    .end annotation

    return-void
.end method

.method public onUserSubStreamVideoStop(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onUserVideoMute(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "muted"
        }
    .end annotation

    return-void
.end method

.method public onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "uid",
            "muted"
        }
    .end annotation

    return-void
.end method

.method public onUserVideoProfileUpdate(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "maxProfile"
        }
    .end annotation

    return-void
.end method

.method public abstract onUserVideoStart(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "maxProfile"
        }
    .end annotation
.end method

.method public abstract onUserVideoStop(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public onVideoDeviceStageChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceState"
        }
    .end annotation

    return-void
.end method

.method public onVirtualBackgroundSourceEnabled(ZI)V
    .locals 0
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

    return-void
.end method

.method public onWarning(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    return-void
.end method
