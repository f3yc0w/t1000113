.class Lnet/aihelp/core/util/viewer/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/viewer/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/viewer/PhotoView;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 645
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 647
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$032(Lnet/aihelp/core/util/viewer/PhotoView;F)F

    .line 651
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 652
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1, v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$102(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    goto :goto_0

    .line 654
    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1, v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$102(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    .line 656
    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 657
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$300(Lnet/aihelp/core/util/viewer/PhotoView;)V

    return v4

    :cond_2
    :goto_1
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
