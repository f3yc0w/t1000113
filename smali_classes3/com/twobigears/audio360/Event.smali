.class public final enum Lcom/twobigears/audio360/Event;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/Event$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twobigears/audio360/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twobigears/audio360/Event;

.field public static final enum DECODER_INIT:Lcom/twobigears/audio360/Event;

.field public static final enum END_OF_STREAM:Lcom/twobigears/audio360/Event;

.field public static final enum ERROR_BUFFER_UNDERRUN:Lcom/twobigears/audio360/Event;

.field public static final enum ERROR_DECODER_FAIL:Lcom/twobigears/audio360/Event;

.field public static final enum ERROR_QUEUE_STARVATION:Lcom/twobigears/audio360/Event;

.field public static final enum INVALID:Lcom/twobigears/audio360/Event;

.field public static final enum LOOPED:Lcom/twobigears/audio360/Event;

.field public static final enum PLAY_STATE_CHANGED:Lcom/twobigears/audio360/Event;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lcom/twobigears/audio360/Event;

    const-string v1, "ERROR_BUFFER_UNDERRUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twobigears/audio360/Event;->ERROR_BUFFER_UNDERRUN:Lcom/twobigears/audio360/Event;

    .line 15
    new-instance v1, Lcom/twobigears/audio360/Event;

    const-string v3, "ERROR_QUEUE_STARVATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/twobigears/audio360/Event;->ERROR_QUEUE_STARVATION:Lcom/twobigears/audio360/Event;

    .line 16
    new-instance v3, Lcom/twobigears/audio360/Event;

    const-string v5, "DECODER_INIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/twobigears/audio360/Event;->DECODER_INIT:Lcom/twobigears/audio360/Event;

    .line 17
    new-instance v5, Lcom/twobigears/audio360/Event;

    const-string v7, "END_OF_STREAM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/twobigears/audio360/Event;->END_OF_STREAM:Lcom/twobigears/audio360/Event;

    .line 18
    new-instance v7, Lcom/twobigears/audio360/Event;

    const-string v9, "LOOPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/twobigears/audio360/Event;->LOOPED:Lcom/twobigears/audio360/Event;

    .line 19
    new-instance v9, Lcom/twobigears/audio360/Event;

    const-string v11, "PLAY_STATE_CHANGED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/twobigears/audio360/Event;->PLAY_STATE_CHANGED:Lcom/twobigears/audio360/Event;

    .line 20
    new-instance v11, Lcom/twobigears/audio360/Event;

    const-string v13, "ERROR_DECODER_FAIL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/twobigears/audio360/Event;->ERROR_DECODER_FAIL:Lcom/twobigears/audio360/Event;

    .line 21
    new-instance v13, Lcom/twobigears/audio360/Event;

    const-string v15, "INVALID"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/twobigears/audio360/Event;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/twobigears/audio360/Event;->INVALID:Lcom/twobigears/audio360/Event;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/twobigears/audio360/Event;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 13
    sput-object v15, Lcom/twobigears/audio360/Event;->$VALUES:[Lcom/twobigears/audio360/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    invoke-static {}, Lcom/twobigears/audio360/Event$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360/Event;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/twobigears/audio360/Event;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 45
    invoke-static {p3}, Lcom/twobigears/audio360/Event$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/twobigears/audio360/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twobigears/audio360/Event;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iget p1, p3, Lcom/twobigears/audio360/Event;->swigValue:I

    iput p1, p0, Lcom/twobigears/audio360/Event;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 51
    invoke-static {p1}, Lcom/twobigears/audio360/Event$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/twobigears/audio360/Event;
    .locals 6

    .line 28
    const-class v0, Lcom/twobigears/audio360/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/twobigears/audio360/Event;

    .line 29
    array-length v2, v1

    if-ge p0, v2, :cond_0

    if-ltz p0, :cond_0

    aget-object v2, v1, p0

    iget v2, v2, Lcom/twobigears/audio360/Event;->swigValue:I

    if-ne v2, p0, :cond_0

    .line 30
    aget-object p0, v1, p0

    return-object p0

    .line 31
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 32
    iget v5, v4, Lcom/twobigears/audio360/Event;->swigValue:I

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
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

.method public static valueOf(Ljava/lang/String;)Lcom/twobigears/audio360/Event;
    .locals 1

    .line 13
    const-class v0, Lcom/twobigears/audio360/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twobigears/audio360/Event;

    return-object p0
.end method

.method public static values()[Lcom/twobigears/audio360/Event;
    .locals 1

    .line 13
    sget-object v0, Lcom/twobigears/audio360/Event;->$VALUES:[Lcom/twobigears/audio360/Event;

    invoke-virtual {v0}, [Lcom/twobigears/audio360/Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twobigears/audio360/Event;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/twobigears/audio360/Event;->swigValue:I

    return v0
.end method
