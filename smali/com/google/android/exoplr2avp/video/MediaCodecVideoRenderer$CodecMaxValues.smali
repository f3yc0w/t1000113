.class public final Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    iput p1, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 1729
    iput p2, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 1730
    iput p3, p0, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    return-void
.end method
