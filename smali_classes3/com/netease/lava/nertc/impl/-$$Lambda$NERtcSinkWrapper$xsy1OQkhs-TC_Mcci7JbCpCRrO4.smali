.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$1:J

    iput p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$2:I

    iput-object p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$3:Lcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$1:J

    iget v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$2:I

    iget-object v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$xsy1OQkhs-TC_Mcci7JbCpCRrO4;->f$3:Lcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserLeave$15(Lcom/netease/lava/nertc/sdk/NERtcCallback;JILcom/netease/lava/nertc/sdk/NERtcUserLeaveExtraInfo;)V

    return-void
.end method
