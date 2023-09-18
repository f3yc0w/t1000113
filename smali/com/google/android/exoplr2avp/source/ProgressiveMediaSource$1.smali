.class Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$1;
.super Lcom/google/android/exoplr2avp/source/ForwardingTimeline;
.source "ProgressiveMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$1;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 0

    .line 364
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    const/4 p1, 0x1

    .line 365
    iput-boolean p1, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->isPlaceholder:Z

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 0

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;

    const/4 p1, 0x1

    .line 358
    iput-boolean p1, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    return-object p2
.end method
