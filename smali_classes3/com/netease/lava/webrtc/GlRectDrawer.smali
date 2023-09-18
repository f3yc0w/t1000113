.class public Lcom/netease/lava/webrtc/GlRectDrawer;
.super Lcom/netease/lava/webrtc/GlGenericDrawer;
.source "GlRectDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/GlRectDrawer$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "void main() {\n  gl_FragColor = sample(tc);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/netease/lava/webrtc/GlRectDrawer$ShaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/lava/webrtc/GlRectDrawer$ShaderCallbacks;-><init>(Lcom/netease/lava/webrtc/GlRectDrawer$1;)V

    const-string v1, "void main() {\n  gl_FragColor = sample(tc);\n}\n"

    invoke-direct {p0, v1, v0}, Lcom/netease/lava/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    return-void
.end method
