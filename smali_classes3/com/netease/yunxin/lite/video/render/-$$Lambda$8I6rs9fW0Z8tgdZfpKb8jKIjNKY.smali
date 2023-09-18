.class public final synthetic Lcom/netease/yunxin/lite/video/render/-$$Lambda$8I6rs9fW0Z8tgdZfpKb8jKIjNKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$8I6rs9fW0Z8tgdZfpKb8jKIjNKY;->f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$8I6rs9fW0Z8tgdZfpKb8jKIjNKY;->f$0:Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/render/LiteSurfaceView;->release()V

    return-void
.end method
