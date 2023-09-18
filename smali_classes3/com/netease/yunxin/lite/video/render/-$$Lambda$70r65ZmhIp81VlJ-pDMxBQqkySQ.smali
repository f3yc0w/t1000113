.class public final synthetic Lcom/netease/yunxin/lite/video/render/-$$Lambda$70r65ZmhIp81VlJ-pDMxBQqkySQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/render/LiteTextureView;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/render/LiteTextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$70r65ZmhIp81VlJ-pDMxBQqkySQ;->f$0:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/-$$Lambda$70r65ZmhIp81VlJ-pDMxBQqkySQ;->f$0:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->release()V

    return-void
.end method
