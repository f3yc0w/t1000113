.class public Lcom/netease/lava/webrtc/TextToTexture;
.super Ljava/lang/Object;
.source "TextToTexture.java"

# interfaces
.implements Lcom/netease/lava/webrtc/RefCounted;


# static fields
.field private static final MAP_KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final MAP_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String; = "TextToTexture"


# instance fields
.field private bgColor:J

.field private bitmap:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private canvas:Landroid/graphics/Canvas;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field private fontColor:J

.field private fontName:Ljava/lang/String;

.field private fontSize:I

.field private imgHeight:I

.field private imgTextureId:I

.field private imgWidth:I

.field private pageHeight:I

.field private pageWidth:I

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->content:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageWidth:I

    .line 59
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageHeight:I

    .line 60
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->imgWidth:I

    .line 61
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->imgHeight:I

    .line 62
    iput-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontName:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontSize:I

    const-wide/16 v2, 0x0

    .line 64
    iput-wide v2, p0, Lcom/netease/lava/webrtc/TextToTexture;->bgColor:J

    .line 65
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoWidth:I

    .line 66
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoHeight:I

    .line 67
    iput v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->imgTextureId:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    .line 69
    iput-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private checkCondition(IILjava/lang/String;IJJLjava/lang/String;II)Ljava/lang/Boolean;
    .locals 3

    .line 122
    iget v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageHeight:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontName:Ljava/lang/String;

    .line 124
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontSize:I

    if-ne p4, v0, :cond_1

    iget-wide v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontColor:J

    cmp-long v2, p5, v0

    if-nez v2, :cond_1

    iget-wide v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->bgColor:J

    cmp-long v2, p7, v0

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->content:Ljava/lang/String;

    .line 128
    invoke-virtual {p9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoWidth:I

    if-ne p10, v0, :cond_1

    iget v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoHeight:I

    if-eq p11, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 131
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TextToTexture][checkCondition] old parameter- pageWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pageHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fontName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fontSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fontColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontColor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bgColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->bgColor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " videoWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToTexture"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TextToTexture][checkCondition] new parameter- page_width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " page_height: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " font_name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " font_size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " font_color: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bg_color: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content_str: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " video_width: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " video_height: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private fileIsValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 329
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 334
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private genBitmap(IILjava/lang/String;IJJLjava/lang/String;II)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v3, v0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    iput-object v4, v0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    .line 217
    :cond_0
    iget-object v3, v0, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v4, v0, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    .line 221
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v8, p1

    move v5, p2

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    .line 222
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, v0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    move-wide/from16 v5, p7

    long-to-int v6, v5

    .line 223
    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 224
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    if-eqz v1, :cond_3

    const-string v5, "."

    .line 227
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    :cond_2
    invoke-direct {p0, v1}, Lcom/netease/lava/webrtc/TextToTexture;->fileIsValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    invoke-static/range {p3 .. p3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_4

    const/4 v4, 0x0

    .line 232
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 234
    :cond_4
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-wide/from16 v4, p5

    long-to-int v1, v4

    .line 235
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setColor(I)V

    move/from16 v1, p4

    int-to-float v1, v1

    .line 236
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x1

    .line 237
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 238
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v5, v1

    move-object/from16 v6, p9

    move-object v7, v3

    move v8, p1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v4, p9

    .line 240
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 241
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    .line 243
    iget-object v5, v0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 244
    iget-object v5, v0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    iget-object v5, v0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v5}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 246
    iget-object v1, v0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "width"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "height"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private internalDraw(IILjava/lang/String;IJJLjava/lang/String;II)I
    .locals 15

    move-object v12, p0

    if-nez p1, :cond_0

    move/from16 v13, p10

    goto :goto_0

    :cond_0
    move/from16 v13, p1

    :goto_0
    if-nez p2, :cond_1

    move/from16 v14, p11

    goto :goto_1

    :cond_1
    move/from16 v14, p2

    :goto_1
    move-object v0, p0

    move v1, v13

    move v2, v14

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 166
    invoke-direct/range {v0 .. v11}, Lcom/netease/lava/webrtc/TextToTexture;->genBitmap(IILjava/lang/String;IJJLjava/lang/String;II)Ljava/util/Map;

    move-result-object v0

    const-string v1, "width"

    .line 169
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "height"

    .line 170
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p1, :cond_3

    if-le v1, v10, :cond_2

    move v13, v10

    goto :goto_2

    :cond_2
    move v13, v1

    :cond_3
    :goto_2
    move/from16 v11, p11

    if-nez p2, :cond_5

    if-le v0, v11, :cond_4

    move v14, v11

    goto :goto_3

    :cond_4
    move v14, v0

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    move-object v0, p0

    move v1, v13

    move v2, v14

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 184
    invoke-direct/range {v0 .. v11}, Lcom/netease/lava/webrtc/TextToTexture;->genBitmap(IILjava/lang/String;IJJLjava/lang/String;II)Ljava/util/Map;

    .line 187
    :cond_7
    iget v0, v12, Lcom/netease/lava/webrtc/TextToTexture;->imgTextureId:I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 189
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 190
    aget v0, v2, v1

    iput v0, v12, Lcom/netease/lava/webrtc/TextToTexture;->imgTextureId:I

    .line 192
    :cond_8
    iget v0, v12, Lcom/netease/lava/webrtc/TextToTexture;->imgTextureId:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 193
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 194
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v3, 0x2601

    .line 195
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 196
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 197
    iget-object v0, v12, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 198
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 199
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 201
    iput v13, v12, Lcom/netease/lava/webrtc/TextToTexture;->imgWidth:I

    .line 202
    iput v14, v12, Lcom/netease/lava/webrtc/TextToTexture;->imgHeight:I

    .line 205
    iget v0, v12, Lcom/netease/lava/webrtc/TextToTexture;->imgTextureId:I

    return v0
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/images/watermark_bitmap.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 262
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 263
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 265
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveRgb2Bitmap(Ljava/nio/Buffer;Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x0

    .line 276
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 277
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 278
    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 281
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 283
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 290
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_0

    .line 295
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-nez v0, :cond_1

    .line 295
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 297
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    :cond_1
    :goto_3
    throw p1
.end method

.method private saveTextureToImage(IIILjava/lang/String;)V
    .locals 14

    move/from16 v7, p2

    move/from16 v8, p3

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    .line 305
    invoke-static {v9, v10, v11}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 306
    aget v0, v10, v11

    const v12, 0x8d40

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v1, 0xde1

    move v2, p1

    .line 307
    invoke-static {v12, v0, v1, p1, v11}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 310
    invoke-static {v12}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    mul-int v0, v7, v8

    mul-int/lit8 v0, v0, 0x4

    .line 315
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 316
    invoke-virtual {v13, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v6, v13

    .line 317
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move-object v0, p0

    move-object/from16 v1, p4

    .line 319
    invoke-direct {p0, v13, v1, v7, v8}, Lcom/netease/lava/webrtc/TextToTexture;->saveRgb2Bitmap(Ljava/nio/Buffer;Ljava/lang/String;II)V

    .line 321
    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 322
    invoke-static {v12, v11}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public drawString(IILjava/lang/String;IJJLjava/lang/String;II)I
    .locals 1

    .line 74
    invoke-direct/range {p0 .. p11}, Lcom/netease/lava/webrtc/TextToTexture;->checkCondition(IILjava/lang/String;IJJLjava/lang/String;II)Ljava/lang/Boolean;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget p1, p0, Lcom/netease/lava/webrtc/TextToTexture;->imgTextureId:I

    return p1

    .line 79
    :cond_0
    iput p1, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageWidth:I

    .line 80
    iput p2, p0, Lcom/netease/lava/webrtc/TextToTexture;->pageHeight:I

    .line 81
    iput p4, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontSize:I

    .line 82
    iput-wide p5, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontColor:J

    .line 83
    iput-wide p7, p0, Lcom/netease/lava/webrtc/TextToTexture;->bgColor:J

    .line 84
    iput-object p9, p0, Lcom/netease/lava/webrtc/TextToTexture;->content:Ljava/lang/String;

    .line 85
    iput p10, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoWidth:I

    .line 86
    iput p11, p0, Lcom/netease/lava/webrtc/TextToTexture;->videoHeight:I

    .line 87
    iput-object p3, p0, Lcom/netease/lava/webrtc/TextToTexture;->fontName:Ljava/lang/String;

    .line 89
    invoke-direct/range {p0 .. p11}, Lcom/netease/lava/webrtc/TextToTexture;->internalDraw(IILjava/lang/String;IJJLjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public getImgHeight()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->imgHeight:I

    return v0
.end method

.method public getImgWidth()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->imgWidth:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    iput-object v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->canvas:Landroid/graphics/Canvas;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    iput-object v1, p0, Lcom/netease/lava/webrtc/TextToTexture;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public retain()V
    .locals 0

    return-void
.end method
