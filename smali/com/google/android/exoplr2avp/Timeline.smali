.class public abstract Lcom/google/android/exoplr2avp/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/Timeline$RemotableTimeline;,
        Lcom/google/android/exoplr2avp/Timeline$Period;,
        Lcom/google/android/exoplr2avp/Timeline$Window;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplr2avp/Timeline;

.field private static final FIELD_PERIODS:I = 0x1

.field private static final FIELD_SHUFFLED_WINDOW_INDICES:I = 0x2

.field private static final FIELD_WINDOWS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 979
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/Timeline;->EMPTY:Lcom/google/android/exoplr2avp/Timeline;

    .line 1442
    sget-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$Timeline$EU6OwlkwPNhNg8St22MX2ZUyMOs;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$Timeline$EU6OwlkwPNhNg8St22MX2ZUyMOs;

    sput-object v0, Lcom/google/android/exoplr2avp/Timeline;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 3

    .line 1445
    sget-object v0, Lcom/google/android/exoplr2avp/Timeline$Window;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    const/4 v1, 0x0

    .line 1447
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/exoplr2avp/util/BundleUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1446
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->fromBundleListRetriever(Lcom/google/android/exoplr2avp/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1448
    sget-object v1, Lcom/google/android/exoplr2avp/Timeline$Period;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    const/4 v2, 0x1

    .line 1450
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/exoplr2avp/util/BundleUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1449
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->fromBundleListRetriever(Lcom/google/android/exoplr2avp/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x2

    .line 1452
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    .line 1453
    new-instance v2, Lcom/google/android/exoplr2avp/Timeline$RemotableTimeline;

    if-nez p0, :cond_0

    .line 1457
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Timeline;->generateUnshuffledIndices(I)[I

    move-result-object p0

    .line 1458
    :cond_0
    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/exoplr2avp/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    return-object v2
.end method

.method private static fromBundleListRetriever(Lcom/google/android/exoplr2avp/Bundleable$Creator;Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplr2avp/Bundleable;",
            ">(",
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1464
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 1466
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1467
    invoke-static {p1}, Lcom/google/android/exoplr2avp/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v1, 0x0

    .line 1468
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1469
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {p0, v2}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1471
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static generateUnshuffledIndices(I)[I
    .locals 2

    .line 1479
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1481
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1475
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$EU6OwlkwPNhNg8St22MX2ZUyMOs(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Timeline;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1321
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplr2avp/Timeline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1324
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/Timeline;

    .line 1325
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_2

    .line 1328
    :cond_2
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 1329
    new-instance v3, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 1330
    new-instance v4, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v4}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 1331
    new-instance v5, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v5}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    const/4 v6, 0x0

    .line 1332
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1333
    invoke-virtual {p0, v6, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v7

    invoke-virtual {p1, v6, v4}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplr2avp/Timeline$Window;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 1337
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 1338
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v4

    .line 1339
    invoke-virtual {p1, v1, v5, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/exoplr2avp/Timeline$Period;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v2
.end method

.method public getFirstWindowIndex(Z)I
    .locals 0

    .line 1098
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public getLastWindowIndex(Z)I
    .locals 0

    .line 1086
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public final getNextPeriodIndex(ILcom/google/android/exoplr2avp/Timeline$Period;Lcom/google/android/exoplr2avp/Timeline$Window;IZ)I
    .locals 1

    .line 1144
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 1145
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    if-ne v0, p1, :cond_1

    .line 1146
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/android/exoplr2avp/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 1150
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1042
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Timeline;->getLastWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 1043
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    return p1

    .line 1046
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 1036
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Timeline;->getLastWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public final getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 1

    const/4 v0, 0x0

    .line 1284
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;
.end method

.method public getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 1

    .line 1272
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getPeriodPosition(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline$Window;",
            "Lcom/google/android/exoplr2avp/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1183
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final getPeriodPosition(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJJ)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline$Window;",
            "Lcom/google/android/exoplr2avp/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1200
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline$Window;",
            "Lcom/google/android/exoplr2avp/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1211
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 1210
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJJ)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline$Window;",
            "Lcom/google/android/exoplr2avp/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1238
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkIndex(III)I

    .line 1239
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 1241
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1246
    :cond_0
    iget p3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    .line 1247
    invoke-virtual {p0, p3, p2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1248
    :goto_0
    iget v0, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    if-ge p3, v0, :cond_1

    iget-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->positionInWindowUs:J

    cmp-long v2, v0, p4

    if-eqz v2, :cond_1

    add-int/lit8 v0, p3, 0x1

    .line 1250
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->positionInWindowUs:J

    cmp-long v3, v1, p4

    if-gtz v3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1253
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1254
    iget-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr p4, v0

    .line 1256
    iget-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    cmp-long p1, v0, p6

    if-eqz p1, :cond_2

    .line 1257
    iget-wide p6, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    const-wide/16 v0, 0x1

    sub-long/2addr p6, v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    :cond_2
    const-wide/16 p6, 0x0

    .line 1260
    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 1261
    iget-object p1, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1069
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 1070
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    :goto_0
    return p1

    .line 1073
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 1063
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    goto :goto_1

    :cond_4
    sub-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method public abstract getUidOfPeriod(I)Ljava/lang/Object;
.end method

.method public final getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1109
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p1

    return-object p1
.end method

.method public abstract getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public hashCode()I
    .locals 6

    .line 1348
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 1349
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v2

    const/16 v3, 0xd9

    add-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1352
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    .line 1353
    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/Timeline$Window;->hashCode()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x1f

    .line 1355
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v0

    add-int/2addr v3, v0

    .line 1356
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    const/4 v0, 0x1

    .line 1357
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLastPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Lcom/google/android/exoplr2avp/Timeline$Window;IZ)Z
    .locals 0

    .line 1172
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplr2avp/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplr2avp/Timeline$Period;Lcom/google/android/exoplr2avp/Timeline$Window;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 1432
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/Timeline;->toBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final toBundle(Z)Landroid/os/Bundle;
    .locals 7

    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v1

    .line 1391
    new-instance v2, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    const-wide/16 v5, 0x0

    .line 1394
    invoke-virtual {p0, v4, v2, v5, v6}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->access$000(Lcom/google/android/exoplr2avp/Timeline$Window;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 1393
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1397
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1398
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v2

    .line 1399
    new-instance v4, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v4}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 1401
    invoke-virtual {p0, v5, v4, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/Timeline$Period;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1404
    :cond_1
    new-array v2, v1, [I

    const/4 v4, 0x1

    if-lez v1, :cond_2

    .line 1406
    invoke-virtual {p0, v4}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result v5

    aput v5, v2, v3

    :cond_2
    const/4 v5, 0x1

    :goto_2
    if-ge v5, v1, :cond_3

    add-int/lit8 v6, v5, -0x1

    .line 1409
    aget v6, v2, v6

    .line 1410
    invoke-virtual {p0, v6, v3, v4}, Lcom/google/android/exoplr2avp/Timeline;->getNextWindowIndex(IIZ)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1414
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1416
    invoke-static {v3}, Lcom/google/android/exoplr2avp/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/android/exoplr2avp/BundleListRetriever;

    invoke-direct {v5, v0}, Lcom/google/android/exoplr2avp/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 1415
    invoke-static {v1, v3, v5}, Lcom/google/android/exoplr2avp/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1418
    invoke-static {v4}, Lcom/google/android/exoplr2avp/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/android/exoplr2avp/BundleListRetriever;

    invoke-direct {v3, p1}, Lcom/google/android/exoplr2avp/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 1417
    invoke-static {v1, v0, v3}, Lcom/google/android/exoplr2avp/util/BundleUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p1, 0x2

    .line 1419
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v1
.end method
