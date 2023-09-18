.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$B432Jd9TTqLMx9WyncaWoI7IVJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$B432Jd9TTqLMx9WyncaWoI7IVJI;->f$0:I

    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$B432Jd9TTqLMx9WyncaWoI7IVJI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$B432Jd9TTqLMx9WyncaWoI7IVJI;->f$0:I

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$B432Jd9TTqLMx9WyncaWoI7IVJI;->f$1:Z

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->lambda$onStreamVolumeChanged$7(IZLcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
