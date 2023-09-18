.class public final enum Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;
.super Ljava/lang/Enum;
.source "NERtcEncryptionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

.field public static final enum GMCryptoSM4ECB:Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    const-string v1, "GMCryptoSM4ECB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;->GMCryptoSM4ECB:Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    aput-object v0, v1, v2

    .line 57
    sput-object v1, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 57
    const-class v0, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;->$VALUES:[Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    invoke-virtual {v0}, [Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    return-object v0
.end method
