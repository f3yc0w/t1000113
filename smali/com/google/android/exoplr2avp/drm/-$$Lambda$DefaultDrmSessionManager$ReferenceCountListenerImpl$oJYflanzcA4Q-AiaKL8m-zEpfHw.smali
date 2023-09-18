.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$oJYflanzcA4Q-AiaKL8m-zEpfHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$oJYflanzcA4Q-AiaKL8m-zEpfHw;->f$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$oJYflanzcA4Q-AiaKL8m-zEpfHw;->f$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->lambda$onReferenceCountDecremented$0(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)V

    return-void
.end method
