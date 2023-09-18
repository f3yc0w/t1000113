.class public final enum Lcom/twobigears/audio360/AudioFormatQuality;
.super Ljava/lang/Enum;
.source "AudioFormatQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/AudioFormatQuality$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twobigears/audio360/AudioFormatQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twobigears/audio360/AudioFormatQuality;

.field public static final enum HIGH:Lcom/twobigears/audio360/AudioFormatQuality;

.field public static final enum LOW:Lcom/twobigears/audio360/AudioFormatQuality;

.field public static final enum MEDIUM:Lcom/twobigears/audio360/AudioFormatQuality;

.field public static final enum VERY_HIGH:Lcom/twobigears/audio360/AudioFormatQuality;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/twobigears/audio360/AudioFormatQuality;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twobigears/audio360/AudioFormatQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twobigears/audio360/AudioFormatQuality;->LOW:Lcom/twobigears/audio360/AudioFormatQuality;

    .line 15
    new-instance v1, Lcom/twobigears/audio360/AudioFormatQuality;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/twobigears/audio360/AudioFormatQuality;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twobigears/audio360/AudioFormatQuality;->MEDIUM:Lcom/twobigears/audio360/AudioFormatQuality;

    .line 16
    new-instance v3, Lcom/twobigears/audio360/AudioFormatQuality;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/twobigears/audio360/AudioFormatQuality;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/twobigears/audio360/AudioFormatQuality;->HIGH:Lcom/twobigears/audio360/AudioFormatQuality;

    .line 17
    new-instance v5, Lcom/twobigears/audio360/AudioFormatQuality;

    const-string v7, "VERY_HIGH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/twobigears/audio360/AudioFormatQuality;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/twobigears/audio360/AudioFormatQuality;->VERY_HIGH:Lcom/twobigears/audio360/AudioFormatQuality;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/twobigears/audio360/AudioFormatQuality;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 13
    sput-object v7, Lcom/twobigears/audio360/AudioFormatQuality;->$VALUES:[Lcom/twobigears/audio360/AudioFormatQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-static {}, Lcom/twobigears/audio360/AudioFormatQuality$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 41
    invoke-static {p3}, Lcom/twobigears/audio360/AudioFormatQuality$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twobigears/audio360/AudioFormatQuality;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twobigears/audio360/AudioFormatQuality;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iget p1, p3, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue:I

    iput p1, p0, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 47
    invoke-static {p1}, Lcom/twobigears/audio360/AudioFormatQuality$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/twobigears/audio360/AudioFormatQuality;
    .locals 6

    .line 24
    const-class v0, Lcom/twobigears/audio360/AudioFormatQuality;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twobigears/audio360/AudioFormatQuality;

    .line 25
    array-length v2, v1

    if-ge p0, v2, :cond_0

    if-ltz p0, :cond_0

    aget-object v2, v1, p0

    iget v2, v2, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue:I

    if-ne v2, p0, :cond_0

    .line 26
    aget-object p0, v1, p0

    return-object p0

    .line 27
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 28
    iget v5, v4, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue:I

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
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

.method public static valueOf(Ljava/lang/String;)Lcom/twobigears/audio360/AudioFormatQuality;
    .locals 1

    .line 13
    const-class v0, Lcom/twobigears/audio360/AudioFormatQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twobigears/audio360/AudioFormatQuality;

    return-object p0
.end method

.method public static values()[Lcom/twobigears/audio360/AudioFormatQuality;
    .locals 1

    .line 13
    sget-object v0, Lcom/twobigears/audio360/AudioFormatQuality;->$VALUES:[Lcom/twobigears/audio360/AudioFormatQuality;

    invoke-virtual {v0}, [Lcom/twobigears/audio360/AudioFormatQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twobigears/audio360/AudioFormatQuality;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue:I

    return v0
.end method
