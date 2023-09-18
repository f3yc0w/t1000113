.class public final synthetic Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;->f$0:Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;

    iput p2, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;->f$1:I

    iput p3, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;->f$0:Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;

    iget v1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;->f$1:I

    iget v2, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->lambda$onFrameResolutionChanged$0$TextureViewRenderer(II)V

    return-void
.end method
