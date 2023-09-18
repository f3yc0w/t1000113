.class public Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;
.super Ljava/lang/Object;
.source "NERtcLiveStreamCallbackWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "NERtcLiveStreamHelper"


# instance fields
.field private final mCallback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;->mCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLiveStreamTaskCallback$0$NERtcLiveStreamCallbackWrapper(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "taskId",
            "errorCode"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;->mCallback:Ljava/lang/Object;

    instance-of v1, v0, Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;->onAddLiveStreamTask(Ljava/lang/String;I)V

    goto :goto_0

    .line 25
    :cond_0
    instance-of v1, v0, Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;->onDeleteLiveStreamTask(Ljava/lang/String;I)V

    goto :goto_0

    .line 27
    :cond_1
    instance-of v1, v0, Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;

    if-eqz v1, :cond_2

    .line 28
    check-cast v0, Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;->onUpdateLiveStreamTask(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLiveStreamTaskCallback(Ljava/lang/String;Ljava/lang/String;I)V
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
            "errorCode"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLiveStreamTaskCallback taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,errorCode: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NERtcLiveStreamHelper"

    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p2, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;

    invoke-direct {p2, p0, p1, p3}, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;-><init>(Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
