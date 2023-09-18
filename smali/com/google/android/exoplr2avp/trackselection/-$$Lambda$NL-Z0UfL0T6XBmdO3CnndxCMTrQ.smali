.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;

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

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$VideoTrackInfo;->compareSelections(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method
