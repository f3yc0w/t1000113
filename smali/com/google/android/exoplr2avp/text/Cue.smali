.class public final Lcom/google/android/exoplr2avp/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/text/Cue$Builder;,
        Lcom/google/android/exoplr2avp/text/Cue$VerticalType;,
        Lcom/google/android/exoplr2avp/text/Cue$TextSizeType;,
        Lcom/google/android/exoplr2avp/text/Cue$LineType;,
        Lcom/google/android/exoplr2avp/text/Cue$AnchorType;
    }
.end annotation


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIMEN_UNSET:F = -3.4028235E38f

.field public static final EMPTY:Lcom/google/android/exoplr2avp/text/Cue;

.field private static final FIELD_BITMAP:I = 0x3

.field private static final FIELD_BITMAP_HEIGHT:I = 0xc

.field private static final FIELD_LINE:I = 0x4

.field private static final FIELD_LINE_ANCHOR:I = 0x6

.field private static final FIELD_LINE_TYPE:I = 0x5

.field private static final FIELD_MULTI_ROW_ALIGNMENT:I = 0x2

.field private static final FIELD_POSITION:I = 0x7

.field private static final FIELD_POSITION_ANCHOR:I = 0x8

.field private static final FIELD_SHEAR_DEGREES:I = 0x10

.field private static final FIELD_SIZE:I = 0xb

.field private static final FIELD_TEXT:I = 0x0

.field private static final FIELD_TEXT_ALIGNMENT:I = 0x1

.field private static final FIELD_TEXT_SIZE:I = 0xa

.field private static final FIELD_TEXT_SIZE_TYPE:I = 0x9

.field private static final FIELD_VERTICAL_TYPE:I = 0xf

.field private static final FIELD_WINDOW_COLOR:I = 0xd

.field private static final FIELD_WINDOW_COLOR_SET:I = 0xe

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TEXT_SIZE_TYPE_ABSOLUTE:I = 0x2

.field public static final TEXT_SIZE_TYPE_FRACTIONAL:I = 0x0

.field public static final TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000

.field public static final VERTICAL_TYPE_LR:I = 0x2

.field public static final VERTICAL_TYPE_RL:I = 0x1


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/text/Cue$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->build()Lcom/google/android/exoplr2avp/text/Cue;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/text/Cue;->EMPTY:Lcom/google/android/exoplr2avp/text/Cue;

    .line 1022
    sget-object v0, Lcom/google/android/exoplr2avp/text/-$$Lambda$Cue$01GbheYmuqVKX9ELuExXDgucMiI;->INSTANCE:Lcom/google/android/exoplr2avp/text/-$$Lambda$Cue$01GbheYmuqVKX9ELuExXDgucMiI;

    sput-object v0, Lcom/google/android/exoplr2avp/text/Cue;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const v3, -0x800001

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const v6, -0x800001

    const/high16 v7, -0x80000000

    const v8, -0x800001

    move-object v0, p0

    move-object v1, p1

    .line 310
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 345
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v12, p8

    move/from16 v10, p9

    move/from16 v11, p10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v13, -0x800001

    const/4 v14, 0x0

    const/high16 v15, -0x1000000

    const/high16 v16, -0x80000000

    const/16 v17, 0x0

    .line 385
    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplr2avp/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v12, p8

    move/from16 v14, p9

    move/from16 v15, p10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v10, -0x80000000

    const v11, -0x800001

    const v13, -0x800001

    const/high16 v16, -0x80000000

    const/16 v17, 0x0

    .line 432
    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplr2avp/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 472
    invoke-static {p4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 474
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 476
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 477
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    :goto_2
    move-object v1, p2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 479
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 481
    iput-object v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    .line 483
    :goto_3
    iput-object v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    move-object v1, p3

    .line 484
    iput-object v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 485
    iput-object v2, v0, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    move v1, p5

    .line 486
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->line:F

    move v1, p6

    .line 487
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->lineType:I

    move v1, p7

    .line 488
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->lineAnchor:I

    move v1, p8

    .line 489
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->position:F

    move v1, p9

    .line 490
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->positionAnchor:I

    move/from16 v1, p12

    .line 491
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->size:F

    move/from16 v1, p13

    .line 492
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->bitmapHeight:F

    move/from16 v1, p14

    .line 493
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->windowColorSet:Z

    move/from16 v1, p15

    .line 494
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->windowColor:I

    move v1, p10

    .line 495
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->textSizeType:I

    move v1, p11

    .line 496
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->textSize:F

    move/from16 v1, p16

    .line 497
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->verticalType:I

    move/from16 v1, p17

    .line 498
    iput v1, v0, Lcom/google/android/exoplr2avp/text/Cue;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplr2avp/text/Cue$1;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p17}, Lcom/google/android/exoplr2avp/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method private static final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/text/Cue;
    .locals 5

    .line 1025
    new-instance v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/text/Cue$Builder;-><init>()V

    const/4 v1, 0x0

    .line 1026
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_0
    const/4 v2, 0x1

    .line 1031
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_1

    .line 1033
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_1
    const/4 v2, 0x2

    .line 1037
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_2

    .line 1039
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_2
    const/4 v2, 0x3

    .line 1041
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1043
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_3
    const/4 v2, 0x4

    .line 1045
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    .line 1046
    invoke-static {v3}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1048
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v3}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1047
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_4
    const/4 v2, 0x6

    .line 1050
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1051
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_5
    const/4 v2, 0x7

    .line 1053
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1054
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_6
    const/16 v2, 0x8

    .line 1056
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1057
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_7
    const/16 v2, 0xa

    .line 1059
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x9

    .line 1060
    invoke-static {v3}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1062
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 1063
    invoke-static {v3}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1061
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setTextSize(FI)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_8
    const/16 v2, 0xb

    .line 1065
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1066
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_9
    const/16 v2, 0xc

    .line 1068
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1069
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setBitmapHeight(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_a
    const/16 v2, 0xd

    .line 1071
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1072
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setWindowColor(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_b
    const/16 v2, 0xe

    .line 1074
    invoke-static {v2}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1075
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->clearWindowColor()Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_c
    const/16 v1, 0xf

    .line 1077
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1078
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setVerticalType(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    :cond_d
    const/16 v1, 0x10

    .line 1080
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1081
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->setShearDegrees(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;

    .line 1083
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/text/Cue$Builder;->build()Lcom/google/android/exoplr2avp/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 1087
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$01GbheYmuqVKX9ELuExXDgucMiI(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/text/Cue;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/text/Cue;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/text/Cue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 2

    .line 503
    new-instance v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/text/Cue$Builder;-><init>(Lcom/google/android/exoplr2avp/text/Cue;Lcom/google/android/exoplr2avp/text/Cue$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 514
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/text/Cue;

    .line 515
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 520
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->line:F

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->lineType:I

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->lineType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->lineAnchor:I

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->lineAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->position:F

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->positionAnchor:I

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->positionAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->size:F

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->bitmapHeight:F

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->windowColorSet:Z

    iget-boolean v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->windowColorSet:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->windowColor:I

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->windowColor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->textSizeType:I

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->textSizeType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->textSize:F

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->textSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->verticalType:I

    iget v3, p1, Lcom/google/android/exoplr2avp/text/Cue;->verticalType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->shearDegrees:F

    iget p1, p1, Lcom/google/android/exoplr2avp/text/Cue;->shearDegrees:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->line:F

    .line 543
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->lineType:I

    .line 544
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->lineAnchor:I

    .line 545
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->position:F

    .line 546
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->positionAnchor:I

    .line 547
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->size:F

    .line 548
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->bitmapHeight:F

    .line 549
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->windowColorSet:Z

    .line 550
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->windowColor:I

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->textSizeType:I

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->textSize:F

    .line 553
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->verticalType:I

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/text/Cue;->shearDegrees:F

    .line 555
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 538
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1001
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 1002
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 1003
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v1, 0x2

    .line 1004
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v1, 0x3

    .line 1005
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x4

    .line 1006
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->line:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v1, 0x5

    .line 1007
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->lineType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x6

    .line 1008
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->lineAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x7

    .line 1009
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->position:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x8

    .line 1010
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->positionAnchor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x9

    .line 1011
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->textSizeType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xa

    .line 1012
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->textSize:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0xb

    .line 1013
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->size:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0xc

    .line 1014
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->bitmapHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0xe

    .line 1015
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->windowColorSet:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xd

    .line 1016
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->windowColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xf

    .line 1017
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->verticalType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    .line 1018
    invoke-static {v1}, Lcom/google/android/exoplr2avp/text/Cue;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/text/Cue;->shearDegrees:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
