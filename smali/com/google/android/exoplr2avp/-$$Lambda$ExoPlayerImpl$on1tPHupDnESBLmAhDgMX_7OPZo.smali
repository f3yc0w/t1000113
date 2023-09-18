.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$on1tPHupDnESBLmAhDgMX_7OPZo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$on1tPHupDnESBLmAhDgMX_7OPZo;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$on1tPHupDnESBLmAhDgMX_7OPZo;->f$0:I

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$setAudioSessionId$9(ILcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
