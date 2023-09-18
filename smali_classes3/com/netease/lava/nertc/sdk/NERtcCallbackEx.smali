.class public interface abstract Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;
.super Ljava/lang/Object;
.source "NERtcCallbackEx.java"

# interfaces
.implements Lcom/netease/lava/nertc/sdk/NERtcCallback;


# virtual methods
.method public abstract onApiCallExecuted(Ljava/lang/String;ILjava/lang/String;)V
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
.end method

.method public abstract onAudioDeviceChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "selected"
        }
    .end annotation
.end method

.method public abstract onAudioDeviceStateChange(II)V
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
.end method

.method public abstract onAudioEffectFinished(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract onAudioEffectTimestampUpdate(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "timestampMs"
        }
    .end annotation
.end method

.method public abstract onAudioMixingStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract onAudioMixingTimestampUpdate(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampMs"
        }
    .end annotation
.end method

.method public abstract onAudioRecording(ILjava/lang/String;)V
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
.end method

.method public abstract onCameraExposureChanged(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation
.end method

.method public abstract onCameraFocusChanged(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation
.end method

.method public abstract onConnectionStateChanged(II)V
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
.end method

.method public abstract onConnectionTypeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConnectionType"
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

.method public abstract onFirstAudioDataReceived(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onFirstAudioFrameDecoded(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation
.end method

.method public abstract onFirstVideoDataReceived(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onFirstVideoDataReceived(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;J)V
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
.end method

.method public abstract onFirstVideoFrameDecoded(JII)V
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
.end method

.method public abstract onFirstVideoFrameDecoded(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JII)V
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
.end method

.method public abstract onLastmileProbeResult(Lcom/netease/lava/nertc/sdk/LastmileProbeResult;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract onLastmileQuality(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation
.end method

.method public abstract onLiveStreamState(Ljava/lang/String;Ljava/lang/String;I)V
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
.end method

.method public abstract onLocalAudioVolumeIndication(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract onLocalAudioVolumeIndication(IZ)V
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
.end method

.method public abstract onLocalPublishFallbackToAudioOnly(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
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
.end method

.method public abstract onLocalVideoWatermarkState(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoStreamType",
            "state"
        }
    .end annotation
.end method

.method public abstract onMediaRelayReceiveEvent(IILjava/lang/String;)V
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
.end method

.method public abstract onMediaRelayStatesChange(ILjava/lang/String;)V
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
.end method

.method public abstract onMediaRightChange(ZZ)V
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
.end method

.method public abstract onPermissionKeyWillExpire()V
.end method

.method public abstract onReJoinChannel(IJ)V
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
.end method

.method public abstract onReconnectingStart()V
.end method

.method public abstract onRecvSEIMsg(JLjava/lang/String;)V
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
.end method

.method public abstract onRemoteAudioVolumeIndication([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioVolumeInfo;I)V
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
.end method

.method public abstract onRemoteSubscribeFallbackToAudioOnly(JZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
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
.end method

.method public abstract onUpdatePermissionKey(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "error",
            "timeout"
        }
    .end annotation
.end method

.method public abstract onUserAudioMute(JZ)V
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
.end method

.method public abstract onUserDataBufferedAmountChanged(JJ)V
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
.end method

.method public abstract onUserDataReceiveMessage(JLjava/nio/ByteBuffer;J)V
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
.end method

.method public abstract onUserDataStart(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserDataStateChanged(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserDataStop(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserSubStreamAudioMute(JZ)V
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
.end method

.method public abstract onUserSubStreamAudioStart(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserSubStreamAudioStop(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserSubStreamVideoStart(JI)V
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

.method public abstract onUserSubStreamVideoStop(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract onUserVideoMute(JZ)V
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
.end method

.method public abstract onUserVideoMute(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JZ)V
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
.end method

.method public abstract onUserVideoProfileUpdate(JI)V
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

.method public abstract onVideoDeviceStageChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceState"
        }
    .end annotation
.end method

.method public abstract onVirtualBackgroundSourceEnabled(ZI)V
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
.end method

.method public abstract onWarning(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method
