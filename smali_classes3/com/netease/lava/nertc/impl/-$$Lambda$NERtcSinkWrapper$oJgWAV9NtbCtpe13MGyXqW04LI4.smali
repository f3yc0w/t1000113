.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$1:I

    iput-wide p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$2:J

    iput-boolean p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$1:I

    iget-wide v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$2:J

    iget-boolean v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$oJgWAV9NtbCtpe13MGyXqW04LI4;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserAudioMute$17$NERtcSinkWrapper(IJZ)V

    return-void
.end method
