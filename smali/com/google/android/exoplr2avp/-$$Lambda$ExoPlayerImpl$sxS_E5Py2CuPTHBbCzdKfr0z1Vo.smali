.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$sxS_E5Py2CuPTHBbCzdKfr0z1Vo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$sxS_E5Py2CuPTHBbCzdKfr0z1Vo;->f$0:Lcom/google/android/exoplr2avp/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$sxS_E5Py2CuPTHBbCzdKfr0z1Vo;->f$0:Lcom/google/android/exoplr2avp/PlaybackInfo;

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$updatePlaybackInfo$23(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method