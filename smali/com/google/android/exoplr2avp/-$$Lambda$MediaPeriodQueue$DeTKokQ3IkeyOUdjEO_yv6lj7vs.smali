.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$MediaPeriodQueue$DeTKokQ3IkeyOUdjEO_yv6lj7vs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableList$Builder;

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaPeriodQueue$DeTKokQ3IkeyOUdjEO_yv6lj7vs;->f$0:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaPeriodQueue$DeTKokQ3IkeyOUdjEO_yv6lj7vs;->f$1:Lcom/google/common/collect/ImmutableList$Builder;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaPeriodQueue$DeTKokQ3IkeyOUdjEO_yv6lj7vs;->f$2:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaPeriodQueue$DeTKokQ3IkeyOUdjEO_yv6lj7vs;->f$0:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaPeriodQueue$DeTKokQ3IkeyOUdjEO_yv6lj7vs;->f$1:Lcom/google/common/collect/ImmutableList$Builder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaPeriodQueue$DeTKokQ3IkeyOUdjEO_yv6lj7vs;->f$2:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->lambda$notifyQueueUpdate$0$MediaPeriodQueue(Lcom/google/common/collect/ImmutableList$Builder;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
