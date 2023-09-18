.class public Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;
.super Ljava/lang/Object;
.source "NERtcEncryptionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;
    }
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final mode:Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "key"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;->mode:Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    .line 46
    iput-object p2, p0, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;->key:Ljava/lang/String;

    return-void
.end method
