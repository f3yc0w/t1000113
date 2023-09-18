.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$3ucFmrI30a6QxdVke_ig3Th6zrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/audio/AudioAttributes;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$3ucFmrI30a6QxdVke_ig3Th6zrY;->f$0:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$3ucFmrI30a6QxdVke_ig3Th6zrY;->f$0:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$setAudioAttributes$8(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
