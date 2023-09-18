.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSession$5iXHszy-QAFwjkCHq1Ndd8gMhDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSession$5iXHszy-QAFwjkCHq1Ndd8gMhDI;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSession$5iXHszy-QAFwjkCHq1Ndd8gMhDI;->f$0:I

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->lambda$openInternal$0(ILcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
