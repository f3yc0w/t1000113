.class public interface abstract Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;
.super Ljava/lang/Object;
.source "NERtcChannelCallback.java"


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

.method public abstract onClientRoleChange(II)V
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

.method public abstract onReconnectingStart(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelId",
            "uid"
        }
    .end annotation
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

.method public abstract onUserJoined(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onUserJoined(JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "joinExtraInfo"
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onUserLeave(JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "reason",
            "leaveExtraInfo"
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
