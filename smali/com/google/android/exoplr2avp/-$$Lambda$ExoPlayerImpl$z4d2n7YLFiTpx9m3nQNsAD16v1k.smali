.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/Player$PositionInfo;

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;->f$0:I

    iput-object p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;->f$1:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;->f$2:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;->f$0:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;->f$1:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;->f$2:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$updatePlaybackInfo$13(ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
