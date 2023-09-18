.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$uCSAKvI3WMHxl1E53dc4w0M-OLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$uCSAKvI3WMHxl1E53dc4w0M-OLQ;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$uCSAKvI3WMHxl1E53dc4w0M-OLQ;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    check-cast p1, Lcom/google/android/exoplr2avp/util/Clock;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->lambda$new$13(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object p1

    return-object p1
.end method
