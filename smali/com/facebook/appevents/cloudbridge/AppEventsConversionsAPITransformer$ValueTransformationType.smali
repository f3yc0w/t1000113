.class public final enum Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;
.super Ljava/lang/Enum;
.source "AppEventsConversionsAPITransformer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueTransformationType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;",
        "",
        "(Ljava/lang/String;I)V",
        "ARRAY",
        "BOOL",
        "INT",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

.field public static final enum ARRAY:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

.field public static final enum BOOL:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

.field public static final Companion:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;

.field public static final enum INT:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    sget-object v1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->ARRAY:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->BOOL:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->INT:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 358
    new-instance v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    const-string v1, "ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->ARRAY:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    .line 359
    new-instance v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    const-string v1, "BOOL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->BOOL:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    .line 360
    new-instance v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    const-string v1, "INT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->INT:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    invoke-static {}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->$values()[Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->$VALUES:[Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    new-instance v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->Companion:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 377
    check-cast p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;
    .locals 2

    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;->$VALUES:[Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 377
    check-cast v0, [Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$ValueTransformationType;

    return-object v0
.end method
