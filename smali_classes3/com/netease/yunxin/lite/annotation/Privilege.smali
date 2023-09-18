.class public final enum Lcom/netease/yunxin/lite/annotation/Privilege;
.super Ljava/lang/Enum;
.source "Privilege.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/annotation/Privilege;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/annotation/Privilege;

.field public static final enum PRIVATE:Lcom/netease/yunxin/lite/annotation/Privilege;

.field public static final enum PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

.field public static final enum PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/netease/yunxin/lite/annotation/Privilege;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/annotation/Privilege;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;

    .line 24
    new-instance v1, Lcom/netease/yunxin/lite/annotation/Privilege;

    const-string v3, "PROTECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/annotation/Privilege;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    .line 29
    new-instance v3, Lcom/netease/yunxin/lite/annotation/Privilege;

    const-string v5, "PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/yunxin/lite/annotation/Privilege;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/yunxin/lite/annotation/Privilege;->PRIVATE:Lcom/netease/yunxin/lite/annotation/Privilege;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/yunxin/lite/annotation/Privilege;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 14
    sput-object v5, Lcom/netease/yunxin/lite/annotation/Privilege;->$VALUES:[Lcom/netease/yunxin/lite/annotation/Privilege;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/annotation/Privilege;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 14
    const-class v0, Lcom/netease/yunxin/lite/annotation/Privilege;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/annotation/Privilege;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/annotation/Privilege;
    .locals 1

    .line 14
    sget-object v0, Lcom/netease/yunxin/lite/annotation/Privilege;->$VALUES:[Lcom/netease/yunxin/lite/annotation/Privilege;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/annotation/Privilege;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/annotation/Privilege;

    return-object v0
.end method
