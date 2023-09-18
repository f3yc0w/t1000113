.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;

    check-cast p1, Lcom/google/android/exoplr2avp/util/Clock;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;-><init>(Lcom/google/android/exoplr2avp/util/Clock;)V

    check-cast v0, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    return-object v0
.end method
