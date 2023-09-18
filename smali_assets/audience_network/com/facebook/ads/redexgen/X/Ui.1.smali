.class public final Lcom/facebook/ads/redexgen/X/Ui;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IX;


# instance fields
.field public final A00:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 57144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    .line 57146
    return-void
.end method


# virtual methods
.method public final A6v()Landroid/os/Looper;
    .locals 1

    .line 57147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final A9k(III)Landroid/os/Message;
    .locals 1

    .line 57148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final A9l(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 57149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final A9m(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 57150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final ADw(I)V
    .locals 1

    .line 57151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 57152
    return-void
.end method

.method public final AER(I)Z
    .locals 1

    .line 57153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public final AES(IJ)Z
    .locals 1

    .line 57154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    return v0
.end method
