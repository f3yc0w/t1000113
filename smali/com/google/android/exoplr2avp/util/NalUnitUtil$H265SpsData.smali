.class public final Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final constraintBytes:[I

.field public final generalLevelIdc:I

.field public final generalProfileCompatibilityFlags:I

.field public final generalProfileIdc:I

.field public final generalProfileSpace:I

.field public final generalTierFlag:Z

.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IZII[IIIIIF)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    .line 120
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    .line 121
    iput p3, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    .line 122
    iput p4, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    .line 123
    iput-object p5, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->constraintBytes:[I

    .line 124
    iput p6, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 125
    iput p7, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    .line 126
    iput p8, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->width:I

    .line 127
    iput p9, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->height:I

    .line 128
    iput p10, p0, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    return-void
.end method
