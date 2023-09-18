.class public final enum Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;
.super Ljava/lang/Enum;
.source "LiteSDKBeautyExtraTemplateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

.field public static final enum kRTCBeautyExtraTemplateTypeFilter:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

.field public static final enum kRTCBeautyExtraTemplateTypeMakeup:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

.field public static final enum kRTCBeautyExtraTemplateTypeSticker:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    const-string v1, "kRTCBeautyExtraTemplateTypeFilter"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeFilter:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    .line 5
    new-instance v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    const-string v3, "kRTCBeautyExtraTemplateTypeSticker"

    const/4 v4, 0x1

    const/16 v5, 0xc8

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeSticker:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    .line 6
    new-instance v3, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    const-string v5, "kRTCBeautyExtraTemplateTypeMakeup"

    const/4 v6, 0x2

    const/16 v7, 0x12c

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->kRTCBeautyExtraTemplateTypeMakeup:Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->$VALUES:[Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

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
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->$VALUES:[Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKBeautyExtraTemplateType;->value:I

    return v0
.end method
