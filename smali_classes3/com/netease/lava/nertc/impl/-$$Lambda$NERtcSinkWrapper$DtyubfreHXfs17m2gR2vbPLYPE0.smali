.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallback;JIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$1:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iput-wide p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$2:J

    iput p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$3:I

    iput-boolean p6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$4:Z

    iput p7, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$1:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget-wide v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$2:J

    iget v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$3:I

    iget-boolean v5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$4:Z

    iget v6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$DtyubfreHXfs17m2gR2vbPLYPE0;->f$5:I

    invoke-virtual/range {v0 .. v6}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserVideoStart$34$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallback;JIZI)V

    return-void
.end method
