.class public enum Lnet/aihelp/ui/chunk/BitmapType;
.super Ljava/lang/Enum;
.source "BitmapType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/ui/chunk/BitmapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/ui/chunk/BitmapType;

.field public static final enum NULL:Lnet/aihelp/ui/chunk/BitmapType;

.field public static final enum NinePatch:Lnet/aihelp/ui/chunk/BitmapType;

.field public static final enum PlainImage:Lnet/aihelp/ui/chunk/BitmapType;

.field public static final enum RawNinePatch:Lnet/aihelp/ui/chunk/BitmapType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lnet/aihelp/ui/chunk/BitmapType$1;

    const-string v1, "NinePatch"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/ui/chunk/BitmapType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/ui/chunk/BitmapType;->NinePatch:Lnet/aihelp/ui/chunk/BitmapType;

    .line 19
    new-instance v1, Lnet/aihelp/ui/chunk/BitmapType$2;

    const-string v3, "RawNinePatch"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/ui/chunk/BitmapType$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/ui/chunk/BitmapType;->RawNinePatch:Lnet/aihelp/ui/chunk/BitmapType;

    .line 59
    new-instance v3, Lnet/aihelp/ui/chunk/BitmapType$3;

    const-string v5, "PlainImage"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/aihelp/ui/chunk/BitmapType$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/aihelp/ui/chunk/BitmapType;->PlainImage:Lnet/aihelp/ui/chunk/BitmapType;

    .line 64
    new-instance v5, Lnet/aihelp/ui/chunk/BitmapType$4;

    const-string v7, "NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/aihelp/ui/chunk/BitmapType$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/aihelp/ui/chunk/BitmapType;->NULL:Lnet/aihelp/ui/chunk/BitmapType;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/aihelp/ui/chunk/BitmapType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 13
    sput-object v7, Lnet/aihelp/ui/chunk/BitmapType;->$VALUES:[Lnet/aihelp/ui/chunk/BitmapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/aihelp/ui/chunk/BitmapType$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/chunk/BitmapType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static determineBitmapType(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/BitmapType;
    .locals 1

    if-nez p0, :cond_0

    .line 100
    sget-object p0, Lnet/aihelp/ui/chunk/BitmapType;->NULL:Lnet/aihelp/ui/chunk/BitmapType;

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object p0, Lnet/aihelp/ui/chunk/BitmapType;->NinePatch:Lnet/aihelp/ui/chunk/BitmapType;

    return-object p0

    .line 104
    :cond_1
    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isRawNinePatchBitmap(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 105
    sget-object p0, Lnet/aihelp/ui/chunk/BitmapType;->RawNinePatch:Lnet/aihelp/ui/chunk/BitmapType;

    return-object p0

    .line 106
    :cond_2
    sget-object p0, Lnet/aihelp/ui/chunk/BitmapType;->PlainImage:Lnet/aihelp/ui/chunk/BitmapType;

    return-object p0
.end method

.method public static getNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    .line 117
    invoke-static {p1}, Lnet/aihelp/ui/chunk/BitmapType;->determineBitmapType(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/BitmapType;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/aihelp/ui/chunk/BitmapType;->createNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/ui/chunk/BitmapType;
    .locals 1

    .line 13
    const-class v0, Lnet/aihelp/ui/chunk/BitmapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/ui/chunk/BitmapType;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/ui/chunk/BitmapType;
    .locals 1

    .line 13
    sget-object v0, Lnet/aihelp/ui/chunk/BitmapType;->$VALUES:[Lnet/aihelp/ui/chunk/BitmapType;

    invoke-virtual {v0}, [Lnet/aihelp/ui/chunk/BitmapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/ui/chunk/BitmapType;

    return-object v0
.end method


# virtual methods
.method protected createChunk(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/NinePatchChunk;
    .locals 0

    .line 78
    invoke-static {}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createEmptyChunk()Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object p1

    return-object p1
.end method

.method protected createNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 8

    .line 121
    invoke-virtual {p0, p2}, Lnet/aihelp/ui/chunk/BitmapType;->createChunk(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object v0

    .line 122
    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0, p1, p2, v0}, Lnet/aihelp/ui/chunk/BitmapType;->modifyBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->toBytes()[B

    move-result-object v4

    iget-object v5, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    move-object v1, v7

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v7
.end method

.method protected modifyBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p2
.end method
