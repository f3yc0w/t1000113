.class public final Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndException"
.end annotation


# instance fields
.field public final eventTime:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

.field public final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    .line 138
    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;

    .line 150
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-object v2, p1, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->eventTime:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStats$EventTimeAndException;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
