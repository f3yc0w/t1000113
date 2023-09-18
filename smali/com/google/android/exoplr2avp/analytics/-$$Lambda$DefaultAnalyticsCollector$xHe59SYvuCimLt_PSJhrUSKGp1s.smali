.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/Player$PositionInfo;

.field public final synthetic f$3:Lcom/google/android/exoplr2avp/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$1:I

    iput-object p3, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$2:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    iput-object p4, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$3:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$1:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$2:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;->f$3:Lcom/google/android/exoplr2avp/Player$PositionInfo;

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$onPositionDiscontinuity$43(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method
