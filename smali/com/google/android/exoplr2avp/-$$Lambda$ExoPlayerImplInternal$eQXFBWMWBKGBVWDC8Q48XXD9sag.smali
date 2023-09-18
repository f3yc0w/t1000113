.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$eQXFBWMWBKGBVWDC8Q48XXD9sag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/PlayerMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$eQXFBWMWBKGBVWDC8Q48XXD9sag;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$eQXFBWMWBKGBVWDC8Q48XXD9sag;->f$1:Lcom/google/android/exoplr2avp/PlayerMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$eQXFBWMWBKGBVWDC8Q48XXD9sag;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$eQXFBWMWBKGBVWDC8Q48XXD9sag;->f$1:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->lambda$sendMessageToTargetThread$1$ExoPlayerImplInternal(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    return-void
.end method
