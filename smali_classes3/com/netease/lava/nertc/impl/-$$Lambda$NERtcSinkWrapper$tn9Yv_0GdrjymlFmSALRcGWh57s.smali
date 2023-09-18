.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$tn9Yv_0GdrjymlFmSALRcGWh57s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$tn9Yv_0GdrjymlFmSALRcGWh57s;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$tn9Yv_0GdrjymlFmSALRcGWh57s;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$tn9Yv_0GdrjymlFmSALRcGWh57s;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$tn9Yv_0GdrjymlFmSALRcGWh57s;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserVideoStop$40(Lcom/netease/lava/nertc/sdk/NERtcCallback;J)V

    return-void
.end method
