.class final Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaSourceHolder"
.end annotation


# instance fields
.field public final activeMediaPeriodIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field public firstWindowIndexInChild:I

.field public isRemoved:Z

.field public final mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V
    .locals 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    .line 487
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 488
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method public reset(I)V
    .locals 0

    .line 492
    iput p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    const/4 p1, 0x0

    .line 493
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 494
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
