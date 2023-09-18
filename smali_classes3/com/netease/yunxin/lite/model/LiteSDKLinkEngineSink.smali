.class public interface abstract Lcom/netease/yunxin/lite/model/LiteSDKLinkEngineSink;
.super Ljava/lang/Object;
.source "LiteSDKLinkEngineSink.java"


# virtual methods
.method public abstract onLinkDirectCallAccept(II)V
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

.method public abstract onLinkDirectCallDisconnect(Ljava/lang/String;I)V
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
.end method

.method public abstract onLinkDirectCallHangUp(Ljava/lang/String;IIZ)V
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
.end method

.method public abstract onLinkDirectCallRing(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method

.method public abstract onLinkDirectCallStartCall(Ljava/lang/String;ILjava/lang/String;)V
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
.end method
