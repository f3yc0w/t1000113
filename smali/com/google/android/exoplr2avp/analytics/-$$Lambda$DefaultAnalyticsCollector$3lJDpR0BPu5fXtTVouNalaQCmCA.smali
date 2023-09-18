.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/source/MediaLoadData;

.field public final synthetic f$3:Ljava/io/IOException;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$1:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$2:Lcom/google/android/exoplr2avp/source/MediaLoadData;

    iput-object p4, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$3:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$1:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$2:Lcom/google/android/exoplr2avp/source/MediaLoadData;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$3:Ljava/io/IOException;

    iget-boolean v4, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;->f$4:Z

    move-object v5, p1

    check-cast v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$onLoadError$26(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;ZLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method
