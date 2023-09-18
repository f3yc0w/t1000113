.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$g1X5iW5pygpj9KYzr98fTh2Tpow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/MediaItem;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$g1X5iW5pygpj9KYzr98fTh2Tpow;->f$0:Lcom/google/android/exoplr2avp/MediaItem;

    iput p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$g1X5iW5pygpj9KYzr98fTh2Tpow;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$g1X5iW5pygpj9KYzr98fTh2Tpow;->f$0:Lcom/google/android/exoplr2avp/MediaItem;

    iget v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$g1X5iW5pygpj9KYzr98fTh2Tpow;->f$1:I

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$updatePlaybackInfo$14(Lcom/google/android/exoplr2avp/MediaItem;ILcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
