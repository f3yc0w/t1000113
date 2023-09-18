.class public Lcom/netease/mobsec/xt/ClickHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/xt/ClickHelper$a;
    }
.end annotation


# static fields
.field public static final STATUS_ERROR_HOOK_FAIL:I = 0x3ee

.field public static final STATUS_ERROR_LOAD_SO:I = 0x3ec

.field public static final STATUS_ERROR_NULL_CONTEXT:I = 0x3ea

.field public static final STATUS_ERROR_RELEASE_SO:I = 0x3eb

.field public static final STATUS_ERROR_SO_NOT_FOUND:I = 0x3ed

.field public static final STATUS_HOOK_SUCCESS:I = 0x0

.field public static final STATUS_INIT_SUCCESS:I = 0x0

.field public static final STATUS_NO_INIT:I = 0x3e9

.field public static volatile c:Ljava/lang/String;


# instance fields
.field public volatile a:Z

.field public volatile b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\u02f2\u0347\u0315\u0359\u02ed\u031c"

    invoke-static {v0, v1}, Lcom/netease/mobsec/xt/ClickHelper;->aea215([CLjava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/mobsec/xt/ClickHelper;->c:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0xc1s
        0xces
        0x2as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->a:Z

    iput-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->b:Z

    return-void
.end method

.method public static aea215([CLjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-char v2, p0, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    rem-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v1

    goto :goto_1

    :cond_0
    shr-int/lit8 v4, v2, 0x1

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    and-int/2addr v2, v3

    xor-int/2addr v2, v1

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xf

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xf1

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    rem-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static get()Lcom/netease/mobsec/xt/ClickHelper;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/xt/ClickHelper$a;->a:Lcom/netease/mobsec/xt/ClickHelper;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x3e9

    return v0

    :cond_0
    sget-object v0, Lcom/netease/mobsec/xt/ClickHelper;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/netease/mobsec/xt/ClickHelper;->c:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const-string v2, "\u0357\u036a\u02c7\u029c\u032c\u026a"

    invoke-static {v1, v2}, Lcom/netease/mobsec/xt/ClickHelper;->aea215([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/netease/mobsec/xt/ClickHelper;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/netease/mobsec/xt/a;->esp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->b:Z

    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->b:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x3ee

    return v0

    :catch_0
    const/16 v0, 0x3ec

    return v0

    :cond_3
    const/16 v0, 0x3ed

    return v0

    :array_0
    .array-data 2
        0xd4s
        0xc8s
        0xbas
    .end array-data
.end method

.method public getClickInfos()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->b:Z

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/netease/mobsec/xt/a;->efb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)I
    .locals 8

    if-nez p1, :cond_0

    const/16 p1, 0x3ea

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/netease/mobsec/xt/b;->a()Z

    move-result v0

    invoke-static {}, Lcom/netease/mobsec/xt/b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/mobsec/xt/b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    sget-object v0, Lcom/netease/mobsec/xt/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    sget-object v0, Lcom/netease/mobsec/xt/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netease/mobsec/xt/b;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xf

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    const-string v5, "\u032a\u0352\u02b7\u02a5\u0321\u0272"

    invoke-static {v4, v5}, Lcom/netease/mobsec/xt/ClickHelper;->aea215([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    new-array v5, v4, [C

    fill-array-data v5, :array_1

    const-string v6, "\u02a5\u02d4\u02d4\u029d\u0354\u02ef"

    invoke-static {v5, v6}, Lcom/netease/mobsec/xt/ClickHelper;->aea215([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    const-string v6, "\u0342\u030e\u0316\u0276\u02c1\u025c"

    invoke-static {v2, v6}, Lcom/netease/mobsec/xt/ClickHelper;->aea215([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    new-array v6, v6, [C

    fill-array-data v6, :array_3

    const-string v7, "\u02e8\u0312\u032c\u02b2\u033e\u0286"

    invoke-static {v6, v7}, Lcom/netease/mobsec/xt/ClickHelper;->aea215([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v4, [C

    fill-array-data v0, :array_4

    const-string v4, "\u02f7\u02bf\u0303\u0273\u0292\u030d"

    invoke-static {v0, v4}, Lcom/netease/mobsec/xt/ClickHelper;->aea215([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/xt/ClickHelper;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v2, 0x800

    if-le v0, v2, :cond_7

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v0, :cond_7

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    :cond_7
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_8

    const/16 p1, 0x3eb

    return p1

    :cond_8
    iput-boolean v5, p0, Lcom/netease/mobsec/xt/ClickHelper;->a:Z

    return v1

    nop

    :array_0
    .array-data 2
        0x8es
        0x4ds
        0x16s
        0x33s
        0x5fs
        0x19s
        0x3es
        0x55s
        0x81s
        0x7as
        0xb0s
        0x5as
        0x98s
        0x15s
        0x4es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x17s
        0x96s
        0x15s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x53s
        0xads
        0xds
        0xc8s
        0x4cs
        0x3cs
        0x3bs
        0xads
        0xccs
    .end array-data

    nop

    :array_3
    .array-data 2
        0x36s
        0x15s
        0x67s
        0xf2s
        0xdes
    .end array-data

    nop

    :array_4
    .array-data 2
        0xe0s
        0x3bs
        0x33s
    .end array-data
.end method

.method public setClickState(Z)V
    .locals 1

    const/16 v0, 0x190

    invoke-virtual {p0, p1, v0}, Lcom/netease/mobsec/xt/ClickHelper;->setClickState(ZI)V

    return-void
.end method

.method public setClickState(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mobsec/xt/ClickHelper;->b:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/netease/mobsec/xt/a;->ess(ZI)V

    return-void
.end method

.method public startHook()I
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mobsec/xt/ClickHelper;->a()I

    move-result v0

    return v0
.end method

.method public startHook(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/netease/mobsec/xt/ClickHelper;->a()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/netease/mobsec/xt/a;->ess(ZI)V

    return v0
.end method
