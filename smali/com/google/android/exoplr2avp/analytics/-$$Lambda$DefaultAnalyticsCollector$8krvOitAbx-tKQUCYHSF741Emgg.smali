.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;->INSTANCE:Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lcom/google/android/exoplr2avp/util/FlagSet;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$new$0(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/util/FlagSet;)V

    return-void
.end method
