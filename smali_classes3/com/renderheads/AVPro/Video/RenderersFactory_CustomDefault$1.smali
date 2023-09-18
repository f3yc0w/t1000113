.class public Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault$1;
.super Ljava/lang/Object;
.source "RenderersFactory_CustomDefault.java"

# interfaces
.implements Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->CreateZeroAudioProcessor(II)Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "var1",
            "var2",
            "var3"
        }
    .end annotation

    return-void
.end method
