.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HOsFVwSpbNiSIQIj5oYeH6IUKuo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HOsFVwSpbNiSIQIj5oYeH6IUKuo;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-boolean p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HOsFVwSpbNiSIQIj5oYeH6IUKuo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final reportEvent()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HOsFVwSpbNiSIQIj5oYeH6IUKuo;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$HOsFVwSpbNiSIQIj5oYeH6IUKuo;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onAudioHasHowling$28$NERtcSinkWrapper(Z)V

    return-void
.end method
