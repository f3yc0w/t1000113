.class public interface abstract Lcom/netease/yunxin/lite/model/LiteSDKEngineSink;
.super Ljava/lang/Object;
.source "LiteSDKEngineSink.java"


# virtual methods
.method public abstract OnAudioDeviceError(Ljava/lang/String;II)V
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
.end method

.method public abstract OnAudioDeviceStateChanged(Ljava/lang/String;II)V
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
.end method

.method public abstract OnMediaRelayDidReceiveEvent(IILjava/lang/String;J)V
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
.end method

.method public abstract OnMediaRelayStateDidChange(ILjava/lang/String;J)V
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
.end method

.method public abstract OnRejoin(IJJ)V
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
.end method

.method public abstract OnRejoinStart(JJ)V
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
.end method

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

.method public abstract onAudioDeviceRoutingChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
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

.method public abstract onAudioEffectTimestampUpdate(IJ)V
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
.end method

.method public abstract onAudioHasHowling(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation
.end method

.method public abstract onAudioMixingStateChanged(II)V
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
.end method

.method public abstract onAudioMixingTimestampUpdate(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
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
            "type",
            "filePath"
        }
    .end annotation
.end method

.method public abstract onCameraExposureChanged(IIII)V
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
.end method

.method public abstract onCameraFocusChanged(IIII)V
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
.end method

.method public abstract onChannelStateChanged(II)V
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
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onJoin(IJJIJLjava/lang/String;)V
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
.end method

.method public abstract onLeave(IJ)V
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

.method public abstract onLiveStreamState(Ljava/lang/String;Ljava/lang/String;I)V
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

.method public abstract onLocalVideoEncoderWatermarkState(II)V
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
.end method

.method public abstract onMediaRightDidChanged(ZZ)V
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

.method public abstract onNetworkTypeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newType"
        }
    .end annotation
.end method

.method public abstract onPermissionKeyWillExpire()V
.end method

.method public abstract onPublishFallbackToAudioOnly(ZZ)V
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
.end method

.method public abstract onReceiveSEIMessage(JLjava/lang/String;)V
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
.end method

.method public abstract onRemoteAudioVolumeIndication([Lcom/netease/yunxin/lite/model/LiteSDKAudioVolumeInfo;J)V
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
.end method

.method public abstract onSubscribeFallbackToAudioOnly(JZZ)V
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
.end method

.method public abstract onSwitchChannel(Ljava/lang/String;ILjava/lang/String;)V
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
.end method

.method public abstract onUpdatePermissionKey(ILjava/lang/String;J)V
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
.end method

.method public abstract onUserAudioMute(JZI)V
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
.end method

.method public abstract onUserAudioStart(JZI)V
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
.end method

.method public abstract onUserAudioStop(JI)V
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
.end method

.method public abstract onUserDataBufferedAmountChanged(JJ)V
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
.end method

.method public abstract onUserDataReceiveMessage(JLjava/nio/ByteBuffer;J)V
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
.end method

.method public abstract onUserDataStart(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation
.end method

.method public abstract onUserDataStateChanged(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation
.end method

.method public abstract onUserDataStop(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation
.end method

.method public abstract onUserFirstAudioDataReceived(JI)V
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
.end method

.method public abstract onUserFirstAudioFrameDecoded(JI)V
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
.end method

.method public abstract onUserFirstVideoDataReceived(JI)V
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
.end method

.method public abstract onUserFirstVideoFrameDecoded(JIII)V
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
.end method

.method public abstract onUserFirstVideoFrameRender(JLjava/lang/String;JJI)V
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
.end method

.method public abstract onUserJoin(JLjava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract onUserLeave(JILjava/lang/String;)V
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
.end method

.method public abstract onUserRoleChanged(II)V
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
.end method

.method public abstract onUserVideoMute(JZI)V
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
.end method

.method public abstract onUserVideoStart(JIIZIZ)V
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
.end method

.method public abstract onUserVideoStop(JI)V
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
.end method

.method public abstract onVideoDeviceError(Ljava/lang/String;I)V
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
.end method

.method public abstract onVideoDeviceStateChanged(Ljava/lang/String;I)V
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
            "warningCode"
        }
    .end annotation
.end method
