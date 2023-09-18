.class public final enum Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;
.super Ljava/lang/Enum;
.source "NERtcSpatializerMaterialName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

.field public static final enum kNERtcSpatializerMaterialCurtainHeavy:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

.field public static final enum kNERtcSpatializerMaterialGrass:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

.field public static final enum kNERtcSpatializerMaterialMarble:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

.field public static final enum kNERtcSpatializerMaterialTransparent:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 9
    new-instance v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    const-string v1, "kNERtcSpatializerMaterialTransparent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->kNERtcSpatializerMaterialTransparent:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    .line 13
    new-instance v1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    const-string v3, "kNERtcSpatializerMaterialCurtainHeavy"

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->kNERtcSpatializerMaterialCurtainHeavy:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    .line 17
    new-instance v3, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    const-string v5, "kNERtcSpatializerMaterialGrass"

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->kNERtcSpatializerMaterialGrass:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    .line 21
    new-instance v5, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    const-string v7, "kNERtcSpatializerMaterialMarble"

    const/4 v8, 0x3

    const/16 v9, 0xc

    invoke-direct {v5, v7, v8, v9}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->kNERtcSpatializerMaterialMarble:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5
    const-class v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;
    .locals 1

    .line 5
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->$VALUES:[Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->type:I

    return v0
.end method
