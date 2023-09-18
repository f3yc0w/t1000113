.class public interface abstract Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;
.super Ljava/lang/Object;
.source "NERtcLinkEngineCallback.java"


# virtual methods
.method public abstract onDirectCallAccept(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method

.method public abstract onDirectCallAccept(II)V
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
.end method

.method public abstract onDirectCallDisconnectWithError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "errMsg"
        }
    .end annotation
.end method

.method public abstract onDirectCallHangupWithReason(IILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reason",
            "code",
            "errMsg",
            "isCallEstablished"
        }
    .end annotation
.end method

.method public abstract onDirectCallRing(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method

.method public abstract onDirectStartCall(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "errMsg"
        }
    .end annotation
.end method
