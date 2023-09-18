.class public final synthetic Lcom/netease/lava/webrtc/EglBase$-CC;
.super Ljava/lang/Object;
.source "EglBase.java"


# direct methods
.method public static configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;
    .locals 1

    .line 53
    new-instance v0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;-><init>()V

    return-object v0
.end method

.method public static create()Lcom/netease/lava/webrtc/EglBase;
    .locals 2

    .line 239
    sget-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN:[I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-static {p0, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->getConfigAttributes(Lcom/netease/lava/webrtc/EglBase$ConfigType;I)[I

    move-result-object v0

    .line 216
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x2

    .line 218
    invoke-static {p0, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->getConfigAttributes(Lcom/netease/lava/webrtc/EglBase$ConfigType;I)[I

    move-result-object p0

    .line 219
    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/netease/lava/webrtc/EglBase$Context;)Lcom/netease/lava/webrtc/EglBase;
    .locals 1

    .line 247
    sget-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {p0, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;
    .locals 1

    const/4 v0, 0x3

    .line 225
    :try_start_0
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->getConfigAttributes(Lcom/netease/lava/webrtc/EglBase$ConfigType;I)[I

    move-result-object v0

    .line 226
    invoke-static {p0, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x2

    .line 228
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->getConfigAttributes(Lcom/netease/lava/webrtc/EglBase$ConfigType;I)[I

    move-result-object p1

    .line 229
    invoke-static {p0, p1}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;
    .locals 1
    .param p0    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_1

    .line 203
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase14Impl;->isEGL14Supported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl14([I)Lcom/netease/lava/webrtc/EglBase14;

    move-result-object p0

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl10([I)Lcom/netease/lava/webrtc/EglBase10;

    move-result-object p0

    :goto_0
    return-object p0

    .line 205
    :cond_1
    instance-of v0, p0, Lcom/netease/lava/webrtc/EglBase14$Context;

    if-eqz v0, :cond_2

    .line 206
    check-cast p0, Lcom/netease/lava/webrtc/EglBase14$Context;

    invoke-static {p0, p1}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl14(Lcom/netease/lava/webrtc/EglBase14$Context;[I)Lcom/netease/lava/webrtc/EglBase14;

    move-result-object p0

    return-object p0

    .line 207
    :cond_2
    instance-of v0, p0, Lcom/netease/lava/webrtc/EglBase10$Context;

    if-eqz v0, :cond_3

    .line 208
    check-cast p0, Lcom/netease/lava/webrtc/EglBase10$Context;

    invoke-static {p0, p1}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl10(Lcom/netease/lava/webrtc/EglBase10$Context;[I)Lcom/netease/lava/webrtc/EglBase10;

    move-result-object p0

    return-object p0

    .line 210
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unrecognized Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createEgl10(Lcom/netease/lava/webrtc/EglBase10$Context;[I)Lcom/netease/lava/webrtc/EglBase10;
    .locals 1

    .line 260
    new-instance v0, Lcom/netease/lava/webrtc/EglBase10Impl;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/netease/lava/webrtc/EglBase10$Context;->getRawContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/netease/lava/webrtc/EglBase10Impl;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl10(Ljavax/microedition/khronos/egl/EGLContext;[I)Lcom/netease/lava/webrtc/EglBase10;
    .locals 1

    .line 269
    new-instance v0, Lcom/netease/lava/webrtc/EglBase10Impl;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/webrtc/EglBase10Impl;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl10([I)Lcom/netease/lava/webrtc/EglBase10;
    .locals 2

    .line 252
    new-instance v0, Lcom/netease/lava/webrtc/EglBase10Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/netease/lava/webrtc/EglBase10Impl;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl14(Landroid/opengl/EGLContext;[I)Lcom/netease/lava/webrtc/EglBase14;
    .locals 1

    .line 291
    new-instance v0, Lcom/netease/lava/webrtc/EglBase14Impl;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/webrtc/EglBase14Impl;-><init>(Landroid/opengl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl14(Lcom/netease/lava/webrtc/EglBase14$Context;[I)Lcom/netease/lava/webrtc/EglBase14;
    .locals 1

    .line 282
    new-instance v0, Lcom/netease/lava/webrtc/EglBase14Impl;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/netease/lava/webrtc/EglBase14$Context;->getRawContext()Landroid/opengl/EGLContext;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/netease/lava/webrtc/EglBase14Impl;-><init>(Landroid/opengl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl14([I)Lcom/netease/lava/webrtc/EglBase14;
    .locals 2

    .line 274
    new-instance v0, Lcom/netease/lava/webrtc/EglBase14Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/netease/lava/webrtc/EglBase14Impl;-><init>(Landroid/opengl/EGLContext;[I)V

    return-object v0
.end method

.method public static getConfigAttributes(Lcom/netease/lava/webrtc/EglBase$ConfigType;I)[I
    .locals 2

    .line 180
    sget-object v0, Lcom/netease/lava/webrtc/EglBase$1;->$SwitchMap$com$netease$lava$webrtc$EglBase$ConfigType:[I

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/EglBase$ConfigType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    if-eq p0, v1, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-ne p1, v1, :cond_0

    .line 192
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN_3:[I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN:[I

    :goto_0
    return-object p0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 190
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RECORDABLE_3:[I

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    :goto_1
    return-object p0

    :cond_3
    if-ne p1, v1, :cond_4

    .line 188
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_RGBA_BUFFER_3:[I

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_RGBA_BUFFER:[I

    :goto_2
    return-object p0

    :cond_5
    if-ne p1, v1, :cond_6

    .line 186
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_BUFFER_3:[I

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    :goto_3
    return-object p0

    :cond_7
    if-ne p1, v1, :cond_8

    .line 184
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RGBA_3:[I

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RGBA:[I

    :goto_4
    return-object p0

    :cond_9
    if-ne p1, v1, :cond_a

    .line 182
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN_3:[I

    goto :goto_5

    :cond_a
    sget-object p0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN:[I

    :goto_5
    return-object p0
.end method

.method public static getOpenGlesVersionFromConfig([I)I
    .locals 4

    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 156
    aget v1, p0, v0

    const/16 v3, 0x3040

    if-ne v1, v3, :cond_2

    add-int/2addr v0, v2

    .line 157
    aget p0, p0, v0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method
