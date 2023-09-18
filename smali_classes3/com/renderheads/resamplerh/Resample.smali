.class public Lcom/renderheads/resamplerh/Resample;
.super Ljava/lang/Object;
.source "Resample.java"


# static fields
.field public static final eQuality_Default:I = 0x1

.field public static final eQuality_High:I = 0x2

.field public static final eQuality_Low:I = 0x0

.field public static final eQuality_Medium:I = 0x1

.field public static final eQuality_VeryHigh:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "resample-rh"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Destroy(I)V
.end method

.method public static native Flush(I)V
.end method

.method public static native Initialise(IIIII)V
.end method

.method public static native Resample(I[BII[FIZ)I
.end method
