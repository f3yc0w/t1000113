.class public final enum Lcom/twobigears/audio360/SpatialisationType;
.super Ljava/lang/Enum;
.source "SpatialisationType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/SpatialisationType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twobigears/audio360/SpatialisationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twobigears/audio360/SpatialisationType;

.field public static final enum AMBISONICS:Lcom/twobigears/audio360/SpatialisationType;

.field public static final enum BINAURAL:Lcom/twobigears/audio360/SpatialisationType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/twobigears/audio360/SpatialisationType;

    const-string v1, "AMBISONICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twobigears/audio360/SpatialisationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twobigears/audio360/SpatialisationType;->AMBISONICS:Lcom/twobigears/audio360/SpatialisationType;

    .line 15
    new-instance v1, Lcom/twobigears/audio360/SpatialisationType;

    const-string v3, "BINAURAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/twobigears/audio360/SpatialisationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twobigears/audio360/SpatialisationType;->BINAURAL:Lcom/twobigears/audio360/SpatialisationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/twobigears/audio360/SpatialisationType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 13
    sput-object v3, Lcom/twobigears/audio360/SpatialisationType;->$VALUES:[Lcom/twobigears/audio360/SpatialisationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-static {}, Lcom/twobigears/audio360/SpatialisationType$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360/SpatialisationType;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/twobigears/audio360/SpatialisationType;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 39
    invoke-static {p3}, Lcom/twobigears/audio360/SpatialisationType$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twobigears/audio360/SpatialisationType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twobigears/audio360/SpatialisationType;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iget p1, p3, Lcom/twobigears/audio360/SpatialisationType;->swigValue:I

    iput p1, p0, Lcom/twobigears/audio360/SpatialisationType;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 45
    invoke-static {p1}, Lcom/twobigears/audio360/SpatialisationType$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/twobigears/audio360/SpatialisationType;
    .locals 6

    .line 22
    const-class v0, Lcom/twobigears/audio360/SpatialisationType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twobigears/audio360/SpatialisationType;

    .line 23
    array-length v2, v1

    if-ge p0, v2, :cond_0

    if-ltz p0, :cond_0

    aget-object v2, v1, p0

    iget v2, v2, Lcom/twobigears/audio360/SpatialisationType;->swigValue:I

    if-ne v2, p0, :cond_0

    .line 24
    aget-object p0, v1, p0

    return-object p0

    .line 25
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 26
    iget v5, v4, Lcom/twobigears/audio360/SpatialisationType;->swigValue:I

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
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

.method public static valueOf(Ljava/lang/String;)Lcom/twobigears/audio360/SpatialisationType;
    .locals 1

    .line 13
    const-class v0, Lcom/twobigears/audio360/SpatialisationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twobigears/audio360/SpatialisationType;

    return-object p0
.end method

.method public static values()[Lcom/twobigears/audio360/SpatialisationType;
    .locals 1

    .line 13
    sget-object v0, Lcom/twobigears/audio360/SpatialisationType;->$VALUES:[Lcom/twobigears/audio360/SpatialisationType;

    invoke-virtual {v0}, [Lcom/twobigears/audio360/SpatialisationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twobigears/audio360/SpatialisationType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/twobigears/audio360/SpatialisationType;->swigValue:I

    return v0
.end method