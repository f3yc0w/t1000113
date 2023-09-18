.class public Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;
.super Ljava/lang/Object;
.source "RenderersFactory_CustomDefault.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/RenderersFactory;


# instance fields
.field private m_AudioPassthrough:Z

.field private m_CodecSelector:Lcom/renderheads/AVPro/Video/MediaCodecSelector_Custom;

.field private m_Context:Landroid/content/Context;

.field private m_CustomAudioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

.field private m_DefaultRenderersFactory:Lcom/google/android/exoplr2avp/DefaultRenderersFactory;

.field private m_ExtensionRenderersMode:I

.field private m_PanAudioProcessor:Lcom/renderheads/AVPro/Video/PanAudioProcessor;

.field private m_PreferSoftware:Z

.field private m_SonicAudioProcessor:Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

.field private m_ZeroAudioProcessor:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;

.field private m_iUnityAudioSampleRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZIILcom/renderheads/AVPro/Video/AudioInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "extensionRendererMode",
            "preferSoftware",
            "audioPassthrough",
            "iUnityAudioSampleRate",
            "iPlayerIndex",
            "audioInfoListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_PreferSoftware:Z

    .line 3
    iput-boolean p4, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_AudioPassthrough:Z

    .line 4
    iput p5, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_iUnityAudioSampleRate:I

    .line 6
    new-instance v0, Lcom/renderheads/AVPro/Video/MediaCodecSelector_Custom;

    invoke-direct {v0, p3}, Lcom/renderheads/AVPro/Video/MediaCodecSelector_Custom;-><init>(Z)V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_CodecSelector:Lcom/renderheads/AVPro/Video/MediaCodecSelector_Custom;

    .line 8
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_Context:Landroid/content/Context;

    .line 9
    iput p2, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_ExtensionRenderersMode:I

    .line 12
    new-instance p3, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;

    invoke-direct {p3, p1}, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p3, p2}, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplr2avp/DefaultRenderersFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_DefaultRenderersFactory:Lcom/google/android/exoplr2avp/DefaultRenderersFactory;

    if-eqz p4, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 19
    :goto_0
    new-array p2, p2, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 24
    new-instance p3, Lcom/renderheads/AVPro/Video/PanAudioProcessor;

    invoke-direct {p3, p7}, Lcom/renderheads/AVPro/Video/PanAudioProcessor;-><init>(Lcom/renderheads/AVPro/Video/AudioInfoListener;)V

    iput-object p3, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_PanAudioProcessor:Lcom/renderheads/AVPro/Video/PanAudioProcessor;

    const/4 p7, 0x0

    .line 25
    aput-object p3, p2, p7

    const/4 p3, 0x1

    if-eqz p4, :cond_1

    .line 31
    invoke-direct {p0, p6, p5}, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->CreateZeroAudioProcessor(II)Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;

    move-result-object p4

    iput-object p4, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_ZeroAudioProcessor:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;

    .line 32
    aput-object p4, p2, p3

    const/4 p4, 0x2

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    .line 38
    :goto_1
    new-instance p5, Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;

    invoke-direct {p5}, Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;-><init>()V

    aput-object p5, p2, p4

    add-int/2addr p4, p3

    .line 41
    new-instance p3, Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

    invoke-direct {p3}, Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;-><init>()V

    iput-object p3, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_SonicAudioProcessor:Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

    .line 42
    aput-object p3, p2, p4

    .line 45
    new-instance p3, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    move-result-object p1

    invoke-direct {p3, p1, p2, p7}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;Z)V

    iput-object p3, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_CustomAudioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    return-void
.end method

.method private CreateZeroAudioProcessor(II)Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iPlayerIndex",
            "iOutputSampleRate"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;

    new-instance v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault$1;

    invoke-direct {v1, p0}, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault$1;-><init>(Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;)V

    invoke-direct {v0, p1, v1}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;-><init>(ILcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;)V

    .line 15
    invoke-virtual {v0, p2}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->SetOutputSampleRate(I)V

    return-object v0
.end method


# virtual methods
.method public GetAudioBufferedSampleCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_ZeroAudioProcessor:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->GetAudioBufferedSampleCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public GrabAudio(II)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleCount",
            "channelCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_ZeroAudioProcessor:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->PullAudioFromBuffer(II)[F

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/text/TextOutput;Lcom/google/android/exoplr2avp/metadata/MetadataOutput;)[Lcom/google/android/exoplr2avp/Renderer;
    .locals 17
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

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_DefaultRenderersFactory:Lcom/google/android/exoplr2avp/DefaultRenderersFactory;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/text/TextOutput;Lcom/google/android/exoplr2avp/metadata/MetadataOutput;)[Lcom/google/android/exoplr2avp/Renderer;

    move-result-object v0

    .line 18
    iget-boolean v2, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_PreferSoftware:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_CustomAudioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-nez v2, :cond_0

    return-object v0

    .line 23
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 27
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_5

    .line 29
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/Renderer;

    invoke-interface {v5}, Lcom/google/android/exoplr2avp/Renderer;->getTrackType()I

    move-result v5

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    iget-boolean v5, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_PreferSoftware:Z

    xor-int/2addr v7, v5

    goto :goto_1

    .line 34
    :cond_2
    iget-object v5, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_CustomAudioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 41
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_5
    iget-object v14, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_CustomAudioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-eqz v14, :cond_6

    .line 48
    new-instance v2, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    iget-object v9, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_Context:Landroid/content/Context;

    iget-object v10, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_CodecSelector:Lcom/renderheads/AVPro/Video/MediaCodecSelector_Custom;

    const/4 v11, 0x1

    move-object v8, v2

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_6
    iget-boolean v2, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_PreferSoftware:Z

    if-eqz v2, :cond_7

    .line 55
    new-instance v2, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;

    iget-object v9, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_Context:Landroid/content/Context;

    iget-object v10, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_CodecSelector:Lcom/renderheads/AVPro/Video/MediaCodecSelector_Custom;

    const-wide/16 v11, 0x1388

    const/4 v13, 0x0

    const/16 v16, 0x32

    move-object v8, v2

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v8 .. v16}, Lcom/google/android/exoplr2avp/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_7
    iget v2, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_ExtensionRenderersMode:I

    if-eqz v2, :cond_9

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 62
    iget v4, v1, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_ExtensionRenderersMode:I

    if-ne v4, v6, :cond_8

    add-int/lit8 v2, v2, -0x1

    :cond_8
    :try_start_0
    const-string v4, "com.google.android.exoplr2avp.ext.vp9.LibvpxVideoRenderer"

    .line 70
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x5

    new-array v8, v5, [Ljava/lang/Class;

    .line 71
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    const-class v9, Landroid/os/Handler;

    aput-object v9, v8, v6

    const-class v9, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x4

    aput-object v9, v8, v11

    .line 72
    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 82
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v5, v3

    const/16 v3, 0x1388

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    aput-object p1, v5, v6

    aput-object p2, v5, v10

    const/16 v3, 0x32

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v11

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/Renderer;

    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 102
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 106
    :catch_1
    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplr2avp/Renderer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplr2avp/Renderer;

    return-object v0
.end method

.method public setAudioPan(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fPan"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->m_PanAudioProcessor:Lcom/renderheads/AVPro/Video/PanAudioProcessor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->setPan(F)V

    :cond_0
    return-void
.end method
