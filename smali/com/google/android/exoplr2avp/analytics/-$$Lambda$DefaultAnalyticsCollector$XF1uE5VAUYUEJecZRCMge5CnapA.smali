.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$XF1uE5VAUYUEJecZRCMge5CnapA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/Player;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;Lcom/google/android/exoplr2avp/Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$XF1uE5VAUYUEJecZRCMge5CnapA;->f$0:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$XF1uE5VAUYUEJecZRCMge5CnapA;->f$1:Lcom/google/android/exoplr2avp/Player;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lcom/google/android/exoplr2avp/util/FlagSet;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$XF1uE5VAUYUEJecZRCMge5CnapA;->f$0:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$XF1uE5VAUYUEJecZRCMge5CnapA;->f$1:Lcom/google/android/exoplr2avp/Player;

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$setPlayer$1$DefaultAnalyticsCollector(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/util/FlagSet;)V

    return-void
.end method
