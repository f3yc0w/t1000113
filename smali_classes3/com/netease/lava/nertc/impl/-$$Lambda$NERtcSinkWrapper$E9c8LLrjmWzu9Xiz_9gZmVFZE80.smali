.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$1:J

    iput-boolean p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$2:Z

    iput-boolean p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$1:J

    iget-boolean v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$2:Z

    iget-boolean v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E9c8LLrjmWzu9Xiz_9gZmVFZE80;->f$3:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onSubscribeFallbackToAudioOnly$90(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZZ)V

    return-void
.end method
