.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$2:J

    iput-wide p5, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$2:J

    iget-wide v4, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;->f$3:J

    move-object v6, p1

    check-cast v6, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$onVideoDecoderInitialized$14(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method
