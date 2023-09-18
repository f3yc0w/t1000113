.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;->f$1:J

    iput-object p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;->f$1:J

    iget-object v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$9KmaMXnpr4Lv---zVwAuLh-_qec;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onReceiveSEIMessage$92(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/lang/String;)V

    return-void
.end method
