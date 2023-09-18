.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$Ts0grAVISNBaCmZZboF75hDuBhE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$Ts0grAVISNBaCmZZboF75hDuBhE;->f$0:I

    iput p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$Ts0grAVISNBaCmZZboF75hDuBhE;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$Ts0grAVISNBaCmZZboF75hDuBhE;->f$0:I

    iget v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$Ts0grAVISNBaCmZZboF75hDuBhE;->f$1:I

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$maybeNotifySurfaceSizeChanged$27(IILcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
