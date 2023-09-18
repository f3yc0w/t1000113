.class Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;
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
    name = "WatermarkTimeStampRunnable"
.end annotation


# instance fields
.field simpleDateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;


# direct methods
.method private constructor <init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$1;)V
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;-><init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$100(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$100(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$200(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$300(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$202(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 338
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 339
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$100(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    const/4 v2, 0x3

    .line 340
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 341
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$200(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 342
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$200(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetX:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 344
    iget v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetY:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 345
    iget v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmHeight:I

    if-lez v2, :cond_0

    .line 346
    iget v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 347
    iget v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 348
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$200(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    iget v1, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmColor:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$300(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$200(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView$WatermarkTimeStampRunnable;->this$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->access$200(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
