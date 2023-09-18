.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AKsNq5ojLbvJd5ucG1A5LVyeO9Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AKsNq5ojLbvJd5ucG1A5LVyeO9Y;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AKsNq5ojLbvJd5ucG1A5LVyeO9Y;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AKsNq5ojLbvJd5ucG1A5LVyeO9Y;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$AKsNq5ojLbvJd5ucG1A5LVyeO9Y;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserVideoStop$42(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    return-void
.end method
