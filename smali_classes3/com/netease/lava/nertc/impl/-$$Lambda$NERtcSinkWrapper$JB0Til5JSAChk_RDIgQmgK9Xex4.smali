.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;->f$1:J

    iput p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;->f$1:J

    iget v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$JB0Til5JSAChk_RDIgQmgK9Xex4;->f$2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserLeave$12$NERtcSinkWrapper(JI)V

    return-void
.end method
