.class public abstract Lcom/netease/lava/nertc/sdk/channel/NERtcChannel;
.super Ljava/lang/Object;
.source "NERtcChannel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract EnableSpatializer(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract EnableSpatializerRoomEffects(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract SetSpatializerRenderMode(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract SetSpatializerRoomProperty(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "room_property"
        }
    .end annotation
.end method

.method public abstract UpdateSpatializerAudioRecvRange(IILcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audible_distance",
            "conversational_distance",
            "roll_off"
        }
    .end annotation
.end method

.method public abstract UpdateSpatializerSelfPosition(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract addLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;)I
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
.end method

.method public abstract adjustChannelPlaybackSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract adjustLoopBackRecordingSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract adjustUserPlaybackSignalVolume(JI)I
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
.end method

.method public abstract enableAudioVolumeIndication(ZIZ)I
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
.end method

.method public abstract enableDualStreamMode(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

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

.method public abstract enableLocalData(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract enableLocalSubStreamAudio(Z)I
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

.method public abstract enableLoopbackRecording(ZLandroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "mediaProjectionResultIntent",
            "callback"
        }
    .end annotation
.end method

.method public abstract enableMediaPub(IZ)I
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
.end method

.method public abstract getChannelName()Ljava/lang/String;
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract joinChannel(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method

.method public abstract joinChannel(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "userId"
        }
    .end annotation
.end method

.method public abstract joinChannel(Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "userId",
            "channelOptions"
        }
    .end annotation
.end method

.method public abstract leaveChannel()I
.end method

.method public abstract muteLocalAudioStream(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract muteLocalSubStreamAudio(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract muteLocalVideoStream(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract muteLocalVideoStream(ZLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mute",
            "streamType"
        }
    .end annotation
.end method

.method public abstract pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
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
.end method

.method public abstract release()V
.end method

.method public abstract removeLiveStreamTask(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;)I
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
.end method

.method public abstract reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
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
.end method

.method public abstract sendData(Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract sendSEIMsg(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seiMsg"
        }
    .end annotation
.end method

.method public abstract sendSEIMsg(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
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
.end method

.method public abstract setAudioSubscribeOnlyBy([J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uidArray"
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

.method public abstract setChannelCallback(Lcom/netease/lava/nertc/sdk/channel/NERtcChannelCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelCallback"
        }
    .end annotation
.end method

.method public abstract setChannelProfile(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelProfile"
        }
    .end annotation
.end method

.method public abstract setClientRole(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation
.end method

.method public abstract setExternalVideoSource(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
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

.method public abstract setExternalVideoSource(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLocalExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
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
.end method

.method public abstract setLocalMediaPriority(IZ)I
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
.end method

.method public abstract setLocalPublishFallbackOption(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
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

.method public abstract setRemoteExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JLcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
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
.end method

.method public abstract setRemoteHighPriorityAudioStream(ZJ)I
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
.end method

.method public abstract setRemoteSubscribeFallbackOption(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract setStatsObserver(Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsObserver"
        }
    .end annotation
.end method

.method public abstract setupLocalSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
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

.method public abstract setupRemoteSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I
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

.method public abstract startChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract startScreenCapture(Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenConfig",
            "mediaProjectionPermissionResultData",
            "mediaProjectionCallback"
        }
    .end annotation
.end method

.method public abstract stopChannelMediaRelay()I
.end method

.method public abstract stopScreenCapture()V
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

.method public abstract subscribeRemoteData(ZJ)I
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
.end method

.method public abstract subscribeRemoteSubStreamAudio(JZ)I
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

.method public abstract subscribeRemoteSubStreamVideo(JZ)I
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

.method public abstract switchCamera()I
.end method

.method public abstract switchCameraWithPosition(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraPos"
        }
    .end annotation
.end method

.method public abstract takeLocalSnapshot(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
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
.end method

.method public abstract takeRemoteSnapshot(JLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
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
.end method

.method public abstract updateChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract updateLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;)I
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
