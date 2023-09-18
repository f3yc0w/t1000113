.class public abstract Lcom/netease/lava/nertc/sdk/NERtcLinkEngine;
.super Ljava/lang/Object;
.source "NERtcLinkEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/lava/nertc/sdk/NERtcLinkEngine;
    .locals 1

    .line 22
    invoke-static {}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->getInstance()Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract directCallHangup()I
.end method

.method public abstract directCallStartCall(Lcom/netease/lava/nertc/pstn/NERtcDirectCallParam;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callParam"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callback"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
