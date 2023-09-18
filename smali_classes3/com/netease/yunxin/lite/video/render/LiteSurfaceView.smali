.class public Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;
.super Lcom/netease/lava/webrtc/SurfaceViewRenderer;
.source "LiteSurfaceView.java"

# interfaces
.implements Lcom/netease/lava/api/IVideoRender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;,
        Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LiteSurfaceView"

.field private static final sMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private mImageRunnableArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInitializedCount:I

.field private mParent:Landroid/view/ViewGroup;

.field private mTextViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStampRunnable:Ljava/lang/Runnable;

.field private mTimeStampView:Landroid/widget/TextView;

.field private mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->sMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    .line 58
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    .line 63
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/view/ViewGroup;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->createImageView(Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private addImageWatermarks([Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageWatermarks"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearImageWatermarks()V

    if-eqz p1, :cond_3

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageViewArray:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageRunnableArray:Ljava/util/ArrayList;

    .line 271
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 272
    iget-object v3, v2, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 273
    iget-object v3, v2, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 274
    iget v3, v2, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->fps:I

    if-lez v3, :cond_0

    .line 275
    new-instance v3, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;

    invoke-direct {v3, p0, v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkImageRunnable;-><init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)V

    .line 276
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageRunnableArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->createImageView(Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->createImageView(Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addTextWatermarks([Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textWatermarks"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearTextWatermarks()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTextViewArray:Ljava/util/ArrayList;

    .line 219
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 221
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 222
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x3

    .line 223
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 224
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetX:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 225
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetY:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 226
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmWidth:I

    if-lez v5, :cond_0

    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmHeight:I

    if-lez v5, :cond_0

    .line 227
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmWidth:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 228
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmHeight:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 229
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmColor:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 231
    :cond_0
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontSize:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 232
    iget v5, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontColor:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v2, v2, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->content:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addTimeStampWatermark()V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearTimeStampWatermark()V

    .line 251
    new-instance v0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;-><init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$1;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampRunnable:Ljava/lang/Runnable;

    .line 252
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private clearAllWatermarks()V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearTextWatermarks()V

    .line 325
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearTimeStampWatermark()V

    .line 326
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearImageWatermarks()V

    return-void
.end method

.method private clearImageWatermarks()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageRunnableArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageRunnableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 310
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 312
    :cond_0
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageRunnableArray:Ljava/util/ArrayList;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageViewArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 317
    iget-object v3, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 319
    :cond_2
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageViewArray:Ljava/util/ArrayList;

    :cond_3
    return-void
.end method

.method private clearTextWatermarks()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTextViewArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTextViewArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 243
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTextViewArray:Ljava/util/ArrayList;

    return-void
.end method

.method private clearTimeStampWatermark()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampRunnable:Ljava/lang/Runnable;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 261
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mTimeStampView:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private createImageView(Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)Landroid/widget/ImageView;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 292
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 293
    iget v2, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageWidth:I

    if-lez v2, :cond_0

    iget v2, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageHeight:I

    if-lez v2, :cond_0

    .line 294
    iget v2, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 295
    iget v2, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    const/4 v2, 0x3

    .line 297
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 298
    iget v2, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetX:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 299
    iget v2, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetY:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v1, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 303
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mImageViewArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private hashCodeToHex()Ljava/lang/String;
    .locals 7

    .line 392
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "(0x%08x)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "(p: %s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRenderTime()I
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getRenderTime()I

    move-result v0

    return v0
.end method

.method public getVideoBufferType()Lcom/netease/lava/api/IVideoRender$VideoBufferType;
    .locals 1

    .line 91
    sget-object v0, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_RAW_DATA:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    return-object v0
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "rendererEvents"
        }
    .end annotation

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$EUi30SiJCsIPimEwx8SiuxdF1kE;-><init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 150
    :cond_0
    iget v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", init, sharedContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialized count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteSurfaceView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", init, caught exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", init, caught illegalStateException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isExternalRender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMirror()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$init$0$LiteSurfaceView(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "sharedContext",
            "rendererEvents"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V

    return-void
.end method

.method public synthetic lambda$setWatermarkConfig$1$LiteSurfaceView(Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "watermarkConfig"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mParent:Landroid/view/ViewGroup;

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    .line 200
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearAllWatermarks()V

    .line 201
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    if-eqz p1, :cond_3

    .line 202
    iget-object p1, p1, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->addImageWatermarks([Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)V

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    if-eqz p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->addTextWatermarks([Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;)V

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mWatermarkConfig:Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    if-eqz p1, :cond_3

    .line 209
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->addTimeStampWatermark()V

    :cond_3
    return-void
.end method

.method public release()V
    .locals 3

    .line 167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 168
    sget-object v0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/render/-$$Lambda$8I6rs9fW0Z8tgdZfpKb8jKIjNKY;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/render/-$$Lambda$8I6rs9fW0Z8tgdZfpKb8jKIjNKY;-><init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 172
    :cond_0
    iget v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "release, initialized count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteSurfaceView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->mInitializedCount:I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "call release"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->release()V

    .line 179
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->clearAllWatermarks()V

    :cond_1
    return-void
.end method

.method public setExternalRender(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setMirror(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirror"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteSurfaceView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setMirror(Z)V

    return-void
.end method

.method public setScalingType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")setScalingType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteSurfaceView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    goto :goto_0

    .line 112
    :cond_1
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    goto :goto_0

    .line 109
    :cond_2
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    :goto_0
    return-void
.end method

.method public setScalingType(Lcom/netease/lava/api/IVideoRender$ScalingType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setScalingType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteSurfaceView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$1;->$SwitchMap$com$netease$lava$api$IVideoRender$ScalingType:[I

    invoke-virtual {p1}, Lcom/netease/lava/api/IVideoRender$ScalingType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 78
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    goto :goto_0

    .line 75
    :cond_0
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    goto :goto_0

    .line 72
    :cond_1
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    .line 81
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    return-void
.end method

.method public setVideoBufferType(Lcom/netease/lava/api/IVideoRender$VideoBufferType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    return-void
.end method

.method public setViewActionListener(Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewActionListener",
            "type"
        }
    .end annotation

    return-void
.end method

.method public setWatermarkConfig(Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watermarkConfig"
        }
    .end annotation

    .line 195
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$FEJnYM99H8z5SdfyX8MCqrXipaA;

    invoke-direct {v1, p0, p1}, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteSurfaceView$FEJnYM99H8z5SdfyX8MCqrXipaA;-><init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
