.class public final Lcom/netease/lava/nertc/impl/EmptyNERtcCallbackEx;
.super Lcom/netease/lava/nertc/sdk/AbsNERtcCallbackEx;
.source "EmptyNERtcCallbackEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/AbsNERtcCallbackEx;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioEffectTimestampUpdate(JJ)V
    .locals 0
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

    return-void
.end method

.method public onDisconnect(I)V
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

.method public onError(I)V
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

.method public onJoinChannel(IJJJ)V
    .locals 0
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

    return-void
.end method

.method public onLeaveChannel(I)V
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

.method public onLocalVideoWatermarkState(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;I)V
    .locals 0
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

    return-void
.end method

.method public onPermissionKeyWillExpire()V
    .locals 0

    return-void
.end method

.method public onUpdatePermissionKey(Ljava/lang/String;II)V
    .locals 0
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

    return-void
.end method

.method public onUserAudioStart(J)V
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

.method public onUserAudioStop(J)V
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

.method public onUserJoined(J)V
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

.method public onUserJoined(JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V
    .locals 0
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

    return-void
.end method

.method public onUserLeave(JI)V
    .locals 0
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

    return-void
.end method

.method public onUserLeave(JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V
    .locals 0
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

    return-void
.end method

.method public onUserVideoStart(JI)V
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

.method public onUserVideoStop(J)V
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
