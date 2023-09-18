.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$GCv76M6WLfmjcG-MAhzWdxpFwJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$GCv76M6WLfmjcG-MAhzWdxpFwJI;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lcom/google/android/exoplr2avp/util/FlagSet;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$GCv76M6WLfmjcG-MAhzWdxpFwJI;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$new$0$ExoPlayerImpl(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/util/FlagSet;)V

    return-void
.end method
