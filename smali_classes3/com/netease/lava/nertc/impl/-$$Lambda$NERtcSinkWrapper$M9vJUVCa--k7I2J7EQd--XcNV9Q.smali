.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$M9vJUVCa--k7I2J7EQd--XcNV9Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$M9vJUVCa--k7I2J7EQd--XcNV9Q;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$M9vJUVCa--k7I2J7EQd--XcNV9Q;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onAudioMixingStateChanged$60(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;)V

    return-void
.end method
