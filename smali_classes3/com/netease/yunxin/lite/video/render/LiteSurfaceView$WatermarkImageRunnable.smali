.class Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;
.super Ljava/lang/Object;
.source "LiteSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatermarkImageRunnable"
.end annotation


# instance fields
.field private final mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

.field private mImageView:Landroid/widget/ImageView;

.field private mIndex:I

.field final synthetic this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "config"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 363
    iput p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mIndex:I

    .line 365
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$400(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 373
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$300(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    iget v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mIndex:I

    .line 377
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    array-length v1, v1

    const/16 v2, 0x3e8

    if-lt v0, v1, :cond_2

    .line 378
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    iget-boolean v0, v0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->loop:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mIndex:I

    .line 380
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    iget v1, v1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->fps:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_2
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;->mConfig:Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    iget v1, v1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->fps:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
