.class public final enum Lcom/twobigears/audio360/EffectIndex;
.super Ljava/lang/Enum;
.source "EffectIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/EffectIndex$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twobigears/audio360/EffectIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twobigears/audio360/EffectIndex;

.field public static final enum EFFECT_1:Lcom/twobigears/audio360/EffectIndex;

.field public static final enum EFFECT_2:Lcom/twobigears/audio360/EffectIndex;

.field public static final enum EFFECT_3:Lcom/twobigears/audio360/EffectIndex;

.field public static final enum EFFECT_4:Lcom/twobigears/audio360/EffectIndex;

.field public static final enum EFFECT_5:Lcom/twobigears/audio360/EffectIndex;

.field public static final enum NUM_EFFECTS:Lcom/twobigears/audio360/EffectIndex;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v0, Lcom/twobigears/audio360/EffectIndex;

    const-string v1, "EFFECT_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twobigears/audio360/EffectIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twobigears/audio360/EffectIndex;->EFFECT_1:Lcom/twobigears/audio360/EffectIndex;

    .line 15
    new-instance v1, Lcom/twobigears/audio360/EffectIndex;

    const-string v3, "EFFECT_2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/twobigears/audio360/EffectIndex;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twobigears/audio360/EffectIndex;->EFFECT_2:Lcom/twobigears/audio360/EffectIndex;

    .line 16
    new-instance v3, Lcom/twobigears/audio360/EffectIndex;

    const-string v5, "EFFECT_3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/twobigears/audio360/EffectIndex;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/twobigears/audio360/EffectIndex;->EFFECT_3:Lcom/twobigears/audio360/EffectIndex;

    .line 17
    new-instance v5, Lcom/twobigears/audio360/EffectIndex;

    const-string v7, "EFFECT_4"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/twobigears/audio360/EffectIndex;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/twobigears/audio360/EffectIndex;->EFFECT_4:Lcom/twobigears/audio360/EffectIndex;

    .line 18
    new-instance v7, Lcom/twobigears/audio360/EffectIndex;

    const-string v9, "EFFECT_5"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/twobigears/audio360/EffectIndex;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/twobigears/audio360/EffectIndex;->EFFECT_5:Lcom/twobigears/audio360/EffectIndex;

    .line 19
    new-instance v9, Lcom/twobigears/audio360/EffectIndex;

    const-string v11, "NUM_EFFECTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/twobigears/audio360/EffectIndex;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/twobigears/audio360/EffectIndex;->NUM_EFFECTS:Lcom/twobigears/audio360/EffectIndex;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/twobigears/audio360/EffectIndex;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 13
    sput-object v11, Lcom/twobigears/audio360/EffectIndex;->$VALUES:[Lcom/twobigears/audio360/EffectIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-static {}, Lcom/twobigears/audio360/EffectIndex$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360/EffectIndex;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/twobigears/audio360/EffectIndex;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 43
    invoke-static {p3}, Lcom/twobigears/audio360/EffectIndex$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twobigears/audio360/EffectIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twobigears/audio360/EffectIndex;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iget p1, p3, Lcom/twobigears/audio360/EffectIndex;->swigValue:I

    iput p1, p0, Lcom/twobigears/audio360/EffectIndex;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 49
    invoke-static {p1}, Lcom/twobigears/audio360/EffectIndex$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/twobigears/audio360/EffectIndex;
    .locals 6

    .line 26
    const-class v0, Lcom/twobigears/audio360/EffectIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twobigears/audio360/EffectIndex;

    .line 27
    array-length v2, v1

    if-ge p0, v2, :cond_0

    if-ltz p0, :cond_0

    aget-object v2, v1, p0

    iget v2, v2, Lcom/twobigears/audio360/EffectIndex;->swigValue:I

    if-ne v2, p0, :cond_0

    .line 28
    aget-object p0, v1, p0

    return-object p0

    .line 29
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 30
    iget v5, v4, Lcom/twobigears/audio360/EffectIndex;->swigValue:I

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with value "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twobigears/audio360/EffectIndex;
    .locals 1

    .line 13
    const-class v0, Lcom/twobigears/audio360/EffectIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twobigears/audio360/EffectIndex;

    return-object p0
.end method

.method public static values()[Lcom/twobigears/audio360/EffectIndex;
    .locals 1

    .line 13
    sget-object v0, Lcom/twobigears/audio360/EffectIndex;->$VALUES:[Lcom/twobigears/audio360/EffectIndex;

    invoke-virtual {v0}, [Lcom/twobigears/audio360/EffectIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twobigears/audio360/EffectIndex;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/twobigears/audio360/EffectIndex;->swigValue:I

    return v0
.end method
