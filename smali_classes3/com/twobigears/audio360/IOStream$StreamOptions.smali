.class public final enum Lcom/twobigears/audio360/IOStream$StreamOptions;
.super Ljava/lang/Enum;
.source "IOStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twobigears/audio360/IOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/IOStream$StreamOptions$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twobigears/audio360/IOStream$StreamOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twobigears/audio360/IOStream$StreamOptions;

.field public static final enum READ_BINARY:Lcom/twobigears/audio360/IOStream$StreamOptions;

.field public static final enum READ_WRITE_BINARY:Lcom/twobigears/audio360/IOStream$StreamOptions;

.field public static final enum WRITE_BINARY:Lcom/twobigears/audio360/IOStream$StreamOptions;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 112
    new-instance v0, Lcom/twobigears/audio360/IOStream$StreamOptions;

    const-string v1, "READ_BINARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twobigears/audio360/IOStream$StreamOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twobigears/audio360/IOStream$StreamOptions;->READ_BINARY:Lcom/twobigears/audio360/IOStream$StreamOptions;

    .line 113
    new-instance v1, Lcom/twobigears/audio360/IOStream$StreamOptions;

    const-string v3, "WRITE_BINARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/twobigears/audio360/IOStream$StreamOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twobigears/audio360/IOStream$StreamOptions;->WRITE_BINARY:Lcom/twobigears/audio360/IOStream$StreamOptions;

    .line 114
    new-instance v3, Lcom/twobigears/audio360/IOStream$StreamOptions;

    const-string v5, "READ_WRITE_BINARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/twobigears/audio360/IOStream$StreamOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/twobigears/audio360/IOStream$StreamOptions;->READ_WRITE_BINARY:Lcom/twobigears/audio360/IOStream$StreamOptions;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/twobigears/audio360/IOStream$StreamOptions;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 111
    sput-object v5, Lcom/twobigears/audio360/IOStream$StreamOptions;->$VALUES:[Lcom/twobigears/audio360/IOStream$StreamOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    invoke-static {}, Lcom/twobigears/audio360/IOStream$StreamOptions$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 138
    invoke-static {p3}, Lcom/twobigears/audio360/IOStream$StreamOptions$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twobigears/audio360/IOStream$StreamOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twobigears/audio360/IOStream$StreamOptions;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iget p1, p3, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue:I

    iput p1, p0, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 144
    invoke-static {p1}, Lcom/twobigears/audio360/IOStream$StreamOptions$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/twobigears/audio360/IOStream$StreamOptions;
    .locals 6

    .line 121
    const-class v0, Lcom/twobigears/audio360/IOStream$StreamOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twobigears/audio360/IOStream$StreamOptions;

    .line 122
    array-length v2, v1

    if-ge p0, v2, :cond_0

    if-ltz p0, :cond_0

    aget-object v2, v1, p0

    iget v2, v2, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue:I

    if-ne v2, p0, :cond_0

    .line 123
    aget-object p0, v1, p0

    return-object p0

    .line 124
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 125
    iget v5, v4, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue:I

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
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

.method public static valueOf(Ljava/lang/String;)Lcom/twobigears/audio360/IOStream$StreamOptions;
    .locals 1

    .line 111
    const-class v0, Lcom/twobigears/audio360/IOStream$StreamOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twobigears/audio360/IOStream$StreamOptions;

    return-object p0
.end method

.method public static values()[Lcom/twobigears/audio360/IOStream$StreamOptions;
    .locals 1

    .line 111
    sget-object v0, Lcom/twobigears/audio360/IOStream$StreamOptions;->$VALUES:[Lcom/twobigears/audio360/IOStream$StreamOptions;

    invoke-virtual {v0}, [Lcom/twobigears/audio360/IOStream$StreamOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twobigears/audio360/IOStream$StreamOptions;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue:I

    return v0
.end method
