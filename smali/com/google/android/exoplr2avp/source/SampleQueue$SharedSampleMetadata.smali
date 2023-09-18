.class final Lcom/google/android/exoplr2avp/source/SampleQueue$SharedSampleMetadata;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedSampleMetadata"
.end annotation


# instance fields
.field public final drmSessionReference:Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;

.field public final format:Lcom/google/android/exoplr2avp/Format;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;)V
    .locals 0

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SampleQueue$SharedSampleMetadata;->format:Lcom/google/android/exoplr2avp/Format;

    .line 1084
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;Lcom/google/android/exoplr2avp/source/SampleQueue$1;)V
    .locals 0

    .line 1078
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/SampleQueue$SharedSampleMetadata;-><init>(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;)V

    return-void
.end method
