.class final enum Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;
.super Ljava/lang/Enum;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/MediaStoreRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PicassoKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

.field public static final enum FULL:Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

.field public static final enum MICRO:Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

.field public static final enum MINI:Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;


# instance fields
.field final androidKind:I

.field final height:I

.field final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 127
    new-instance v6, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    const-string v1, "MICRO"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x60

    const/16 v5, 0x60

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->MICRO:Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    .line 128
    new-instance v0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    const-string v8, "MINI"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/16 v11, 0x200

    const/16 v12, 0x180

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->MINI:Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    .line 129
    new-instance v1, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    const-string v14, "FULL"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->FULL:Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    const/4 v2, 0x3

    new-array v2, v2, [Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 126
    sput-object v2, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->$VALUES:[Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput p3, p0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->androidKind:I

    .line 137
    iput p4, p0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->width:I

    .line 138
    iput p5, p0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->height:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;
    .locals 1

    .line 126
    const-class v0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;
    .locals 1

    .line 126
    sget-object v0, Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->$VALUES:[Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    invoke-virtual {v0}, [Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/ui/image/MediaStoreRequestHandler$PicassoKind;

    return-object v0
.end method
