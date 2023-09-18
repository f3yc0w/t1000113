.class public final synthetic Lcom/netease/yunxin/lite/util/-$$Lambda$QbnKJUpxkZLwu4TfDsCHewv_Z1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Looper;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$QbnKJUpxkZLwu4TfDsCHewv_Z1g;->f$0:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$QbnKJUpxkZLwu4TfDsCHewv_Z1g;->f$0:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
