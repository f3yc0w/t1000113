.class public final Lcom/onevcat/uniwebview/e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "La/v;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIFFLjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/onevcat/uniwebview/e;->a:I

    iput p2, p0, Lcom/onevcat/uniwebview/e;->b:I

    iput p3, p0, Lcom/onevcat/uniwebview/e;->c:I

    iput p4, p0, Lcom/onevcat/uniwebview/e;->d:I

    iput p5, p0, Lcom/onevcat/uniwebview/e;->e:F

    iput p6, p0, Lcom/onevcat/uniwebview/e;->f:F

    iput-object p7, p0, Lcom/onevcat/uniwebview/e;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    check-cast v8, La/v;

    const-string v1, "it"

    .line 1
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v0, Lcom/onevcat/uniwebview/e;->a:I

    iget v4, v0, Lcom/onevcat/uniwebview/e;->b:I

    iget v5, v0, Lcom/onevcat/uniwebview/e;->c:I

    iget v6, v0, Lcom/onevcat/uniwebview/e;->d:I

    iget v1, v0, Lcom/onevcat/uniwebview/e;->e:F

    iget v2, v0, Lcom/onevcat/uniwebview/e;->f:F

    iget-object v7, v0, Lcom/onevcat/uniwebview/e;->g:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "identifier"

    .line 2
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v8, La/v;->i:Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    sget-object v1, La/i;->c:La/i$a;

    .line 3
    sget-object v1, La/i;->d:La/i;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Trying to animate web view but an other transition animation is not finished yet. Ignore this one."

    const-string v3, "message"

    .line 5
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, La/i;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/16 v9, 0x3e8

    int-to-float v9, v9

    mul-float v1, v1, v9

    float-to-long v13, v1

    mul-float v2, v2, v9

    float-to-long v1, v2

    .line 6
    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 7
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v3

    iget-object v11, v8, La/v;->d:La/b0;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    int-to-float v11, v4

    iget-object v15, v8, La/v;->d:La/b0;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getY()F

    move-result v15

    sub-float/2addr v11, v15

    const/4 v15, 0x0

    invoke-direct {v9, v15, v10, v15, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v9, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 8
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 9
    new-instance v15, La/k;

    iget-object v10, v8, La/v;->d:La/b0;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v9, v8, La/v;->d:La/b0;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v16

    move-object v9, v15

    move-object v0, v12

    move v12, v5

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide v4, v13

    move/from16 v13, v16

    move v14, v6

    invoke-direct/range {v9 .. v14}, La/k;-><init>(Landroid/view/View;IIII)V

    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v15, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v15, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 10
    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, La/t;

    move-object v1, v10

    move-object v2, v8

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v1 .. v7}, La/t;-><init>(La/v;IIIILjava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v8, La/v;->d:La/b0;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v10, 0x1

    .line 11
    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
