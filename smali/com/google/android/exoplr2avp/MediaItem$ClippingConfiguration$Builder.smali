.class public final Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private endPositionMs:J

.field private relativeToDefaultPosition:Z

.field private relativeToLiveWindow:Z

.field private startPositionMs:J

.field private startsAtKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 1494
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;)V
    .locals 2

    .line 1497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->startPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    .line 1499
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->endPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    .line 1500
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    .line 1501
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    .line 1502
    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;Lcom/google/android/exoplr2avp/MediaItem$1;)V
    .locals 0

    .line 1485
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;-><init>(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;)J
    .locals 2

    .line 1485
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;)J
    .locals 2

    .line 1485
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;)Z
    .locals 0

    .line 1485
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;)Z
    .locals 0

    .line 1485
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;)Z
    .locals 0

    .line 1485
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;
    .locals 1

    .line 1559
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;

    move-result-object v0

    return-object v0
.end method

.method public buildClippingProperties()Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;-><init>(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-object v0
.end method

.method public setEndPositionMs(J)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1521
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 1522
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    return-object p0
.end method

.method public setRelativeToDefaultPosition(Z)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;
    .locals 0

    .line 1541
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    return-object p0
.end method

.method public setRelativeToLiveWindow(Z)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;
    .locals 0

    .line 1532
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    return-object p0
.end method

.method public setStartPositionMs(J)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1510
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 1511
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    return-object p0
.end method

.method public setStartsAtKeyFrame(Z)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;
    .locals 0

    .line 1550
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    return-object p0
.end method
