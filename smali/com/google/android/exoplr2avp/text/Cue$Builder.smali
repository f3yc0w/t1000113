.class public final Lcom/google/android/exoplr2avp/text/Cue$Builder;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeight:F

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private multiRowAlignment:Landroid/text/Layout$Alignment;

.field private position:F

.field private positionAnchor:I

.field private shearDegrees:F

.field private size:F

.field private text:Ljava/lang/CharSequence;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private textSize:F

.field private textSizeType:I

.field private verticalType:I

.field private windowColor:I

.field private windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 579
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 580
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 581
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 582
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 583
    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    .line 584
    iput v1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineType:I

    .line 585
    iput v1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineAnchor:I

    .line 586
    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->position:F

    .line 587
    iput v1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->positionAnchor:I

    .line 588
    iput v1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSizeType:I

    .line 589
    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSize:F

    .line 590
    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->size:F

    .line 591
    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    .line 593
    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColor:I

    .line 594
    iput v1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/text/Cue;)V
    .locals 1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iget-object v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 599
    iget-object v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 600
    iget-object v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 601
    iget-object v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 602
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->line:F

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->line:F

    .line 603
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->lineType:I

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineType:I

    .line 604
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->lineAnchor:I

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineAnchor:I

    .line 605
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->position:F

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->position:F

    .line 606
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->positionAnchor:I

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->positionAnchor:I

    .line 607
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->textSizeType:I

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSizeType:I

    .line 608
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->textSize:F

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSize:F

    .line 609
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->size:F

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->size:F

    .line 610
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->bitmapHeight:F

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmapHeight:F

    .line 611
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->windowColorSet:Z

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColorSet:Z

    .line 612
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->windowColor:I

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColor:I

    .line 613
    iget v0, p1, Lcom/google/android/exoplr2avp/text/Cue;->verticalType:I

    iput v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->verticalType:I

    .line 614
    iget p1, p1, Lcom/google/android/exoplr2avp/text/Cue;->shearDegrees:F

    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/text/Cue;Lcom/google/android/exoplr2avp/text/Cue$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/text/Cue$Builder;-><init>(Lcom/google/android/exoplr2avp/text/Cue;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/text/Cue;
    .locals 22

    move-object/from16 v0, p0

    .line 934
    new-instance v20, Lcom/google/android/exoplr2avp/text/Cue;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->line:F

    iget v7, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineType:I

    iget v8, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineAnchor:I

    iget v9, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->position:F

    iget v10, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->positionAnchor:I

    iget v11, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSizeType:I

    iget v12, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSize:F

    iget v13, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->size:F

    iget v14, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColor:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->verticalType:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->shearDegrees:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplr2avp/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplr2avp/text/Cue$1;)V

    return-object v20
.end method

.method public clearWindowColor()Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 882
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapHeight()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 863
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmapHeight:F

    return v0
.end method

.method public getLine()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 717
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->line:F

    return v0
.end method

.method public getLineAnchor()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 747
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineAnchor:I

    return v0
.end method

.method public getLineType()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 727
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineType:I

    return v0
.end method

.method public getPosition()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 769
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->position:F

    return v0
.end method

.method public getPositionAnchor()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 789
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->positionAnchor:I

    return v0
.end method

.method public getSize()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 843
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->size:F

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAlignment()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 821
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSize:F

    return v0
.end method

.method public getTextSizeType()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 811
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSizeType:I

    return v0
.end method

.method public getVerticalType()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 929
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->verticalType:I

    return v0
.end method

.method public getWindowColor()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 903
    iget v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColor:I

    return v0
.end method

.method public isWindowColorSet()Z
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColorSet:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBitmapHeight(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 852
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->bitmapHeight:F

    return-object p0
.end method

.method public setLine(FI)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 704
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->line:F

    .line 705
    iput p2, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineType:I

    return-object p0
.end method

.method public setLineAnchor(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 736
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->lineAnchor:I

    return-object p0
.end method

.method public setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setPosition(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 757
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->position:F

    return-object p0
.end method

.method public setPositionAnchor(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 778
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->positionAnchor:I

    return-object p0
.end method

.method public setShearDegrees(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 918
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->shearDegrees:F

    return-object p0
.end method

.method public setSize(F)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 831
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->size:F

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setTextSize(FI)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 799
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSize:F

    .line 800
    iput p2, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->textSizeType:I

    return-object p0
.end method

.method public setVerticalType(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 912
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->verticalType:I

    return-object p0
.end method

.method public setWindowColor(I)Lcom/google/android/exoplr2avp/text/Cue$Builder;
    .locals 0

    .line 875
    iput p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColor:I

    const/4 p1, 0x1

    .line 876
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/text/Cue$Builder;->windowColorSet:Z

    return-object p0
.end method
