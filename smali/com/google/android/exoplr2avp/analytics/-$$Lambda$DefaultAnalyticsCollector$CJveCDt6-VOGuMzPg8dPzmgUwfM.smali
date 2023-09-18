.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$CJveCDt6-VOGuMzPg8dPzmgUwfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$CJveCDt6-VOGuMzPg8dPzmgUwfM;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$CJveCDt6-VOGuMzPg8dPzmgUwfM;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$notifySeekStarted$2(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method
