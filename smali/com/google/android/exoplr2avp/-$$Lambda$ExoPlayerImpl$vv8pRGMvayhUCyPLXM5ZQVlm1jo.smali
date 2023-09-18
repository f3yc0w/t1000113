.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vv8pRGMvayhUCyPLXM5ZQVlm1jo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vv8pRGMvayhUCyPLXM5ZQVlm1jo;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vv8pRGMvayhUCyPLXM5ZQVlm1jo;->f$1:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vv8pRGMvayhUCyPLXM5ZQVlm1jo;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vv8pRGMvayhUCyPLXM5ZQVlm1jo;->f$1:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$new$1$ExoPlayerImpl(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method
