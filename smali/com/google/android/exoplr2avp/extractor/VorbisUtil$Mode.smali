.class public final Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# instance fields
.field public final blockFlag:Z

.field public final mapping:I

.field public final transformType:I

.field public final windowType:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;->blockFlag:Z

    .line 125
    iput p2, p0, Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;->windowType:I

    .line 126
    iput p3, p0, Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;->transformType:I

    .line 127
    iput p4, p0, Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;->mapping:I

    return-void
.end method