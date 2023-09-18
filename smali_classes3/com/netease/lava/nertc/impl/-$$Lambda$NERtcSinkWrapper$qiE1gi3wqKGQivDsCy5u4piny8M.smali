.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$3:J

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$1:I

    iput-object p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$3:J

    iput-boolean p6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$1:I

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$3:J

    iget-boolean v5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$qiE1gi3wqKGQivDsCy5u4piny8M;->f$4:Z

    invoke-virtual/range {v0 .. v5}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserVideoMute$38$NERtcSinkWrapper(ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JZ)V

    return-void
.end method
