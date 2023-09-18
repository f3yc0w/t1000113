.class final Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

.field private final id:Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

.field private mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/MediaSourceList;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaSourceList;Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V
    .locals 1

    .line 531
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    invoke-static {p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->access$000(Lcom/google/android/exoplr2avp/MediaSourceList;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    .line 533
    invoke-static {p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->access$100(Lcom/google/android/exoplr2avp/MediaSourceList;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    .line 534
    iput-object p2, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    return-void
.end method

.method private maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    invoke-static {v0, p2}, Lcom/google/android/exoplr2avp/MediaSourceList;->access$200(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->id:Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->access$300(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;I)I

    move-result p1

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v0, v0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 670
    invoke-static {v0, p2}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplr2avp/MediaSourceList;

    .line 672
    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->access$000(Lcom/google/android/exoplr2avp/MediaSourceList;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iget v0, v0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 676
    invoke-static {v0, p2}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->this$0:Lcom/google/android/exoplr2avp/MediaSourceList;

    .line 678
    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->access$100(Lcom/google/android/exoplr2avp/MediaSourceList;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 645
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 637
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    :cond_0
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    .line 612
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 613
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 629
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 652
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 653
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 568
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 557
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 580
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 581
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 546
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 591
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    :cond_0
    return-void
.end method
