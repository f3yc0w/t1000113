.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$rQJdk24m702uR4BwQpwNAQK9NsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$rQJdk24m702uR4BwQpwNAQK9NsQ;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$rQJdk24m702uR4BwQpwNAQK9NsQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$rQJdk24m702uR4BwQpwNAQK9NsQ;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$rQJdk24m702uR4BwQpwNAQK9NsQ;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$onVideoDecoderReleased$17(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method
