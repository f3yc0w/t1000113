.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$EhQryHSrBGrnZznMtoeo5WzKEkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$EhQryHSrBGrnZznMtoeo5WzKEkM;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$EhQryHSrBGrnZznMtoeo5WzKEkM;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$EhQryHSrBGrnZznMtoeo5WzKEkM;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$EhQryHSrBGrnZznMtoeo5WzKEkM;->f$1:I

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$onDrmSessionAcquired$62(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method
