.class final Lnet/aihelp/core/ui/image/TargetAction;
.super Lnet/aihelp/core/ui/image/Action;
.source "TargetAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/image/Action<",
        "Lnet/aihelp/core/ui/image/Target;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Target;Lnet/aihelp/core/ui/image/Request;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p9

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 27
    invoke-direct/range {v0 .. v10}, Lnet/aihelp/core/ui/image/Action;-><init>(Lnet/aihelp/core/ui/image/Picasso;Ljava/lang/Object;Lnet/aihelp/core/ui/image/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method complete(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/TargetAction;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/ui/image/Target;

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0, p1, p2}, Lnet/aihelp/core/ui/image/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Target callback must not recycle bitmap!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "Attempted to complete action with no result!\n%s"

    .line 34
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method error(Ljava/lang/Exception;)V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/TargetAction;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/ui/image/Target;

    if-eqz v0, :cond_1

    .line 48
    iget v1, p0, Lnet/aihelp/core/ui/image/TargetAction;->errorResId:I

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lnet/aihelp/core/ui/image/TargetAction;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v1, v1, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    iget v2, p0, Lnet/aihelp/core/ui/image/TargetAction;->errorResId:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/aihelp/core/ui/image/Target;->onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/ui/image/TargetAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, p1, v1}, Lnet/aihelp/core/ui/image/Target;->onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
