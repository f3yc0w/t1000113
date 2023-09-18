.class public final Lcom/facebook/ads/redexgen/X/be;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/My;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bd;->setListener(Lcom/facebook/ads/MediaViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/MediaViewListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/bd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/MediaViewListener;)V
    .locals 0

    .line 70132
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAL()V
    .locals 2

    .line 70133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onComplete(Lcom/facebook/ads/MediaView;)V

    .line 70134
    return-void
.end method

.method public final AAg()V
    .locals 2

    .line 70135
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onEnterFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 70136
    return-void
.end method

.method public final AAm()V
    .locals 2

    .line 70137
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onExitFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 70138
    return-void
.end method

.method public final AAs()V
    .locals 2

    .line 70139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenBackground(Lcom/facebook/ads/MediaView;)V

    .line 70140
    return-void
.end method

.method public final AAu()V
    .locals 2

    .line 70141
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenForeground(Lcom/facebook/ads/MediaView;)V

    .line 70142
    return-void
.end method

.method public final ABl()V
    .locals 2

    .line 70143
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    .line 70144
    return-void
.end method

.method public final ACt()V
    .locals 3

    .line 70145
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A01(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVolume()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/MediaViewListener;->onVolumeChange(Lcom/facebook/ads/MediaView;F)V

    .line 70146
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 70147
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/bd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bd;->A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    .line 70148
    return-void
.end method
