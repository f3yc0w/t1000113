.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vZjafwC-tS5HatgAojDuyP48QZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/MediaMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vZjafwC-tS5HatgAojDuyP48QZA;->f$0:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vZjafwC-tS5HatgAojDuyP48QZA;->f$0:Lcom/google/android/exoplr2avp/MediaMetadata;

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$updatePlaybackInfo$18(Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
