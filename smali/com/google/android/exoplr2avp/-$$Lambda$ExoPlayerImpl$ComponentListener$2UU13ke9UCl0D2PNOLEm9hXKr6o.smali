.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$2UU13ke9UCl0D2PNOLEm9hXKr6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$2UU13ke9UCl0D2PNOLEm9hXKr6o;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$2UU13ke9UCl0D2PNOLEm9hXKr6o;->f$0:Z

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->lambda$onSkipSilenceEnabledChanged$1(ZLcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
