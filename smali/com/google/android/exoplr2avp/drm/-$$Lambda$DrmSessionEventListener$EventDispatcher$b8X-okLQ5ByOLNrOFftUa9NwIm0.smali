.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

.field public final synthetic f$2:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;->f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;->f$2:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;->f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;->f$2:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmSessionManagerError$2$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    return-void
.end method
