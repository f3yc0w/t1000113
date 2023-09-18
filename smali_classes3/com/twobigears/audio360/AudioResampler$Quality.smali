.class public final enum Lcom/twobigears/audio360/AudioResampler$Quality;
.super Ljava/lang/Enum;
.source "AudioResampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twobigears/audio360/AudioResampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/AudioResampler$Quality$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twobigears/audio360/AudioResampler$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twobigears/audio360/AudioResampler$Quality;

.field public static final enum FAST:Lcom/twobigears/audio360/AudioResampler$Quality;

.field public static final enum OPTIMAL:Lcom/twobigears/audio360/AudioResampler$Quality;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 79
    new-instance v0, Lcom/twobigears/audio360/AudioResampler$Quality;

    const-string v1, "OPTIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twobigears/audio360/AudioResampler$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twobigears/audio360/AudioResampler$Quality;->OPTIMAL:Lcom/twobigears/audio360/AudioResampler$Quality;

    .line 80
    new-instance v1, Lcom/twobigears/audio360/AudioResampler$Quality;

    const-string v3, "FAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/twobigears/audio360/AudioResampler$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twobigears/audio360/AudioResampler$Quality;->FAST:Lcom/twobigears/audio360/AudioResampler$Quality;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/twobigears/audio360/AudioResampler$Quality;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 78
    sput-object v3, Lcom/twobigears/audio360/AudioResampler$Quality;->$VALUES:[Lcom/twobigears/audio360/AudioResampler$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    invoke-static {}, Lcom/twobigears/audio360/AudioResampler$Quality$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 104
    invoke-static {p3}, Lcom/twobigears/audio360/AudioResampler$Quality$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twobigears/audio360/AudioResampler$Quality;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twobigears/audio360/AudioResampler$Quality;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iget p1, p3, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue:I

    iput p1, p0, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 110
    invoke-static {p1}, Lcom/twobigears/audio360/AudioResampler$Quality$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/twobigears/audio360/AudioResampler$Quality;
    .locals 6

    .line 87
    const-class v0, Lcom/twobigears/audio360/AudioResampler$Quality;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twobigears/audio360/AudioResampler$Quality;

    .line 88
    array-length v2, v1

    if-ge p0, v2, :cond_0

    if-ltz p0, :cond_0

    aget-object v2, v1, p0

    iget v2, v2, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue:I

    if-ne v2, p0, :cond_0

    .line 89
    aget-object p0, v1, p0

    return-object p0

    .line 90
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 91
    iget v5, v4, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue:I

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
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

.method public static valueOf(Ljava/lang/String;)Lcom/twobigears/audio360/AudioResampler$Quality;
    .locals 1

    .line 78
    const-class v0, Lcom/twobigears/audio360/AudioResampler$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twobigears/audio360/AudioResampler$Quality;

    return-object p0
.end method

.method public static values()[Lcom/twobigears/audio360/AudioResampler$Quality;
    .locals 1

    .line 78
    sget-object v0, Lcom/twobigears/audio360/AudioResampler$Quality;->$VALUES:[Lcom/twobigears/audio360/AudioResampler$Quality;

    invoke-virtual {v0}, [Lcom/twobigears/audio360/AudioResampler$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twobigears/audio360/AudioResampler$Quality;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/twobigears/audio360/AudioResampler$Quality;->swigValue:I

    return v0
.end method
