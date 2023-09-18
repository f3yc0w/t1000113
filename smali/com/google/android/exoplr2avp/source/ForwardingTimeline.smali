.class public abstract Lcom/google/android/exoplr2avp/source/ForwardingTimeline;
.super Lcom/google/android/exoplr2avp/Timeline;
.source "ForwardingTimeline.java"


# instance fields
.field protected final timeline:Lcom/google/android/exoplr2avp/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/Timeline;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    return p1
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLastWindowIndex(Z)I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    return p1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p1

    return-object p1
.end method

.method public getWindowCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method
