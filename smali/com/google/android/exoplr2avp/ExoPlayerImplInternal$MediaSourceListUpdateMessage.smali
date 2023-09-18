.class final Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceListUpdateMessage"
.end annotation


# instance fields
.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final positionUs:J

.field private final shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

.field private final windowIndex:I


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/ShuffleOrder;",
            "IJ)V"
        }
    .end annotation

    .line 3060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3061
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    .line 3062
    iput-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 3063
    iput p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    .line 3064
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;IJLcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;)V
    .locals 0

    .line 3049
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I
    .locals 0

    .line 3049
    iget p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;
    .locals 0

    .line 3049
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplr2avp/source/ShuffleOrder;
    .locals 0

    .line 3049
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J
    .locals 2

    .line 3049
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-wide v0
.end method
