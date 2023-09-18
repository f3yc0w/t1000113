.class public final enum Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;
.super Ljava/lang/Enum;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

.field public static final enum Auto:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

.field public static final enum Byte:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

.field public static final enum GB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

.field public static final enum KB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

.field public static final enum MB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

.field public static final enum TB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 68
    new-instance v0, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    const-string v1, "Byte"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->Byte:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    .line 69
    new-instance v1, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    const-string v3, "KB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->KB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    .line 70
    new-instance v3, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    const-string v5, "MB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->MB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    .line 71
    new-instance v5, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    const-string v7, "GB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->GB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    .line 72
    new-instance v7, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    const-string v9, "TB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->TB:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    .line 73
    new-instance v9, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    const-string v11, "Auto"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->Auto:Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 67
    sput-object v11, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->$VALUES:[Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 67
    const-class v0, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;
    .locals 1

    .line 67
    sget-object v0, Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->$VALUES:[Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/util/FileUtil$SizeUnit;

    return-object v0
.end method
