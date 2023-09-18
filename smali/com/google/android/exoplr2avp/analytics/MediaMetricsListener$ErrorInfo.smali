.class final Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorInfo"
.end annotation


# instance fields
.field public final errorCode:I

.field public final subErrorCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;->errorCode:I

    .line 877
    iput p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;->subErrorCode:I

    return-void
.end method
