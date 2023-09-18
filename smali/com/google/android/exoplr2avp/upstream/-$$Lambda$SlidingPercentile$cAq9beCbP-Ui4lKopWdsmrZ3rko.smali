.class public final synthetic Lcom/google/android/exoplr2avp/upstream/-$$Lambda$SlidingPercentile$cAq9beCbP-Ui4lKopWdsmrZ3rko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/upstream/-$$Lambda$SlidingPercentile$cAq9beCbP-Ui4lKopWdsmrZ3rko;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$SlidingPercentile$cAq9beCbP-Ui4lKopWdsmrZ3rko;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$SlidingPercentile$cAq9beCbP-Ui4lKopWdsmrZ3rko;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$SlidingPercentile$cAq9beCbP-Ui4lKopWdsmrZ3rko;->INSTANCE:Lcom/google/android/exoplr2avp/upstream/-$$Lambda$SlidingPercentile$cAq9beCbP-Ui4lKopWdsmrZ3rko;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/SlidingPercentile$Sample;

    check-cast p2, Lcom/google/android/exoplr2avp/upstream/SlidingPercentile$Sample;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/upstream/SlidingPercentile;->lambda$static$1(Lcom/google/android/exoplr2avp/upstream/SlidingPercentile$Sample;Lcom/google/android/exoplr2avp/upstream/SlidingPercentile$Sample;)I

    move-result p1

    return p1
.end method
