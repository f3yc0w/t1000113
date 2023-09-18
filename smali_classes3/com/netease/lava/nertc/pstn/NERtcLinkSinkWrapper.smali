.class public Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;
.super Ljava/lang/Object;
.source "NERtcLinkSinkWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/LiteSDKLinkEngineSink;


# static fields
.field private static final TAG:Ljava/lang/String; = "NERtcLinkSinkWrapper"


# instance fields
.field private mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onLinkDirectCallAccept$3(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "code"
        }
    .end annotation

    .line 51
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;->onDirectCallAccept(I)V

    return-void
.end method

.method static synthetic lambda$onLinkDirectCallAccept$4(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "callType",
            "code"
        }
    .end annotation

    .line 52
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;->onDirectCallAccept(II)V

    return-void
.end method

.method static synthetic lambda$onLinkDirectCallDisconnect$5(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 62
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;->onDirectCallDisconnectWithError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onLinkDirectCallHangUp$1(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;IILjava/lang/String;Z)V
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
            "hangupReason",
            "errorCode",
            "errorMsg",
            "isCallEstablished"
        }
    .end annotation

    .line 33
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;->onDirectCallHangupWithReason(IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$onLinkDirectCallRing$2(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "code"
        }
    .end annotation

    .line 42
    invoke-interface {p0, p1}, Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;->onDirectCallRing(I)V

    return-void
.end method

.method static synthetic lambda$onLinkDirectCallStartCall$0(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "callback",
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 23
    invoke-interface {p0, p1, p2}, Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;->onDirectStartCall(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLinkDirectCallAccept(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callType",
            "code"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkDirectCallAccept callType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcLinkSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$t32k0BcsQiQnRBGPtMz448VBQoQ;

    invoke-direct {v1, v0, p2}, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$t32k0BcsQiQnRBGPtMz448VBQoQ;-><init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    new-instance v1, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;

    invoke-direct {v1, v0, p1, p2}, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;-><init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;II)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLinkDirectCallDisconnect(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorMsg",
            "errorCode"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkDirectCallDisconnect errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcLinkSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$tUOfF5mtXf9EVXLveumqyJzlNOA;

    invoke-direct {v1, v0, p2, p1}, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$tUOfF5mtXf9EVXLveumqyJzlNOA;-><init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLinkDirectCallHangUp(Ljava/lang/String;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorMsg",
            "errorCode",
            "hangupReason",
            "isCallEstablished"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkDirectCallHangUp errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hangupReason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCallEstablished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcLinkSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    if-eqz v3, :cond_0

    .line 33
    new-instance v0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;

    move-object v2, v0

    move v4, p3

    move v5, p2

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;-><init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;IILjava/lang/String;Z)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLinkDirectCallRing(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkDirectCallRing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NERtcLinkSinkWrapper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$BoZOPMnb1t6AZ5cLsE4dTIKbEN0;

    invoke-direct {v1, v0, p1}, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$BoZOPMnb1t6AZ5cLsE4dTIKbEN0;-><init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;I)V

    invoke-static {v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLinkDirectCallStartCall(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorMsg",
            "errorCode",
            "sessionId"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLinkDirectCallStartCall errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "NERtcLinkSinkWrapper"

    invoke-static {v0, p3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p3, p0, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    if-eqz p3, :cond_0

    .line 23
    new-instance v0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;

    invoke-direct {v0, p3, p2, p1}, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;-><init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setLinkCallback(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->mCallback:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    return-void
.end method
