.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ysSN-JCaOVAFNwNHz6ZBAtOvIrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ysSN-JCaOVAFNwNHz6ZBAtOvIrQ;->f$0:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ysSN-JCaOVAFNwNHz6ZBAtOvIrQ;->f$0:F

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$setVolume$10(FLcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
