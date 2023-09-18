.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$8T9WiH37h0MBf5N1neA4hVM3OnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/PlaybackInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/PlaybackInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$8T9WiH37h0MBf5N1neA4hVM3OnM;->f$0:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iput p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$8T9WiH37h0MBf5N1neA4hVM3OnM;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$8T9WiH37h0MBf5N1neA4hVM3OnM;->f$0:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$8T9WiH37h0MBf5N1neA4hVM3OnM;->f$1:I

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$updatePlaybackInfo$12(Lcom/google/android/exoplr2avp/PlaybackInfo;ILcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
