.class public Lcom/renderheads/AVPro/Video/RenderersFactory_Opus;
.super Ljava/lang/Object;
.source "RenderersFactory_Opus.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/RenderersFactory;


# instance fields
.field private m_RenderersFactory:Lcom/google/android/exoplr2avp/RenderersFactory;

.field private m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioSink;Lcom/google/android/exoplr2avp/RenderersFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sink",
            "renderersFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_Opus;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    .line 3
    iput-object p2, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_Opus;->m_RenderersFactory:Lcom/google/android/exoplr2avp/RenderersFactory;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/text/TextOutput;Lcom/google/android/exoplr2avp/metadata/MetadataOutput;)[Lcom/google/android/exoplr2avp/Renderer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventHandler",
            "videoRendererEventListener",
            "audioRendererEventListener",
            "textRendererOutput",
            "metadataRendererOutput"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_Opus;->m_RenderersFactory:Lcom/google/android/exoplr2avp/RenderersFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplr2avp/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/text/TextOutput;Lcom/google/android/exoplr2avp/metadata/MetadataOutput;)[Lcom/google/android/exoplr2avp/Renderer;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 7
    aget-object p3, p1, p2

    invoke-interface {p3}, Lcom/google/android/exoplr2avp/Renderer;->getTrackType()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 9
    new-instance p3, Lcom/twobigears/audio360exo2/OpusRenderer;

    iget-object p4, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_Opus;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-direct {p3, p4}, Lcom/twobigears/audio360exo2/OpusRenderer;-><init>(Lcom/google/android/exoplr2avp/audio/AudioSink;)V

    aput-object p3, p1, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
