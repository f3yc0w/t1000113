.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$1:I

    iput-object p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$3:J

    iput p6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$4:I

    iput p7, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$1:I

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$3:J

    iget v5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$4:I

    iget v6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$sSToDxaPUd59oY83dKL6gNumUJA;->f$5:I

    invoke-virtual/range {v0 .. v6}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserFirstVideoFrameDecoded$46$NERtcSinkWrapper(ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;JII)V

    return-void
.end method
