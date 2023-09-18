.class public Lcom/netease/yunxin/lite/util/NV21ToBitmap;
.super Ljava/lang/Object;
.source "NV21ToBitmap.java"


# static fields
.field private static rs:Landroid/renderscript/RenderScript;

.field private static yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 2

    .line 20
    sget-object v0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    .line 22
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v0

    sput-object v0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$RtcAHWSL59_2BiMIBLuDvyiNA0w()V
    .locals 0

    invoke-static {}, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->init()V

    return-void
.end method

.method public static nv21ToBitmap([BIII)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nv21",
            "width",
            "height",
            "rotation"
        }
    .end annotation

    .line 29
    :try_start_0
    sget-object v0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/netease/yunxin/lite/util/-$$Lambda$NV21ToBitmap$RtcAHWSL59_2BiMIBLuDvyiNA0w;->INSTANCE:Lcom/netease/yunxin/lite/util/-$$Lambda$NV21ToBitmap$RtcAHWSL59_2BiMIBLuDvyiNA0w;

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    new-instance v0, Landroid/renderscript/Type$Builder;

    sget-object v1, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/renderscript/Type$Builder;

    sget-object v3, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v1, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v1

    .line 36
    sget-object v3, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 37
    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 39
    sget-object p0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 40
    sget-object p0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 42
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_1

    .line 46
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p3

    .line 47
    invoke-virtual {v7, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    .line 48
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nv21ToBitmap failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NV21ToBitmap"

    invoke-static {p1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static release()V
    .locals 3

    .line 60
    :try_start_0
    sget-object v0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->finish()V

    .line 62
    sget-object v0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/netease/yunxin/lite/util/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NV21ToBitmap"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
