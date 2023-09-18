.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$2:I

    iput-wide p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$2:I

    iget-wide v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$lCUU3yWScoyLT4EkkaOl74bFepI;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUpdatePermissionKey$112(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;IJ)V

    return-void
.end method
