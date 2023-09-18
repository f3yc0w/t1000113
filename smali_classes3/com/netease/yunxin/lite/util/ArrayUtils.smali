.class public Lcom/netease/yunxin/lite/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_FLOAT_ARRAY:[F

.field private static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_SHORT_ARRAY:[S

.field private static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 19
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    new-array v1, v0, [C

    .line 21
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    new-array v1, v0, [Z

    .line 23
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [F

    .line 25
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    new-array v1, v0, [D

    .line 27
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [B

    .line 29
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    new-array v1, v0, [S

    .line 31
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    new-array v1, v0, [I

    .line 33
    sput-object v1, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_INT_ARRAY:[I

    new-array v0, v0, [J

    .line 35
    sput-object v0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const-string v0, "array == null"

    .line 207
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 211
    :cond_0
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static contains([II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "array",
            "valueToFind"
        }
    .end annotation

    .line 61
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/util/ArrayUtils;->indexOf([II)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([JJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "array",
            "valueToFind"
        }
    .end annotation

    .line 57
    invoke-static {p0, p1, p2}, Lcom/netease/yunxin/lite/util/ArrayUtils;->indexOf([JJ)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "array",
            "objectToFind"
        }
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 182
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 183
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    return p0

    .line 184
    :cond_1
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 185
    check-cast p0, [Z

    check-cast p0, [Z

    array-length p0, p0

    return p0

    .line 186
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 187
    check-cast p0, [B

    check-cast p0, [B

    array-length p0, p0

    return p0

    .line 188
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 189
    check-cast p0, [C

    check-cast p0, [C

    array-length p0, p0

    return p0

    .line 190
    :cond_4
    instance-of v0, p0, [D

    if-eqz v0, :cond_5

    .line 191
    check-cast p0, [D

    check-cast p0, [D

    array-length p0, p0

    return p0

    .line 192
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    .line 193
    check-cast p0, [F

    check-cast p0, [F

    array-length p0, p0

    return p0

    .line 194
    :cond_6
    instance-of v0, p0, [I

    if-eqz v0, :cond_7

    .line 195
    check-cast p0, [I

    check-cast p0, [I

    array-length p0, p0

    return p0

    .line 196
    :cond_7
    instance-of v0, p0, [J

    if-eqz v0, :cond_8

    .line 197
    check-cast p0, [J

    check-cast p0, [J

    array-length p0, p0

    return p0

    .line 198
    :cond_8
    instance-of v0, p0, [S

    if-eqz v0, :cond_9

    .line 199
    check-cast p0, [S

    check-cast p0, [S

    array-length p0, p0

    return p0

    .line 201
    :cond_9
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has incompatible type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static indexOf([II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "array",
            "valueToFind"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, p1, v0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->indexOf([III)I

    move-result p0

    return p0
.end method

.method public static indexOf([III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "array",
            "valueToFind",
            "startIndex"
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 125
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_3

    .line 126
    aget v0, p0, p2

    if-ne p1, v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static indexOf([JJ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "array",
            "valueToFind"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, p2, v0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->indexOf([JJI)I

    move-result p0

    return p0
.end method

.method public static indexOf([JJI)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "array",
            "valueToFind",
            "startIndex"
        }
    .end annotation

    .line 93
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    .line 99
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge p3, v0, :cond_3

    .line 100
    aget-wide v2, p0, p3

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "array",
            "objectToFind"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, v0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "array",
            "objectToFind",
            "startIndex"
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-nez p1, :cond_3

    .line 72
    :goto_0
    array-length p1, p0

    if-ge p2, p1, :cond_5

    .line 73
    aget-object p1, p0, p2

    if-nez p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 78
    :cond_3
    :goto_1
    array-length v0, p0

    if-ge p2, v0, :cond_5

    .line 79
    aget-object v0, p0, p2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public static isEmpty([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([C)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([D)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 167
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 146
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([S)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty([Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nonNullElements([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 136
    aget-object v3, p0, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 43
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object p0

    .line 45
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 46
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 47
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 279
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 280
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 282
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 283
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 284
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 228
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 230
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 231
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 232
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 293
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object p0

    .line 295
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 296
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 297
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 307
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object p0

    .line 309
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 310
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 311
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 254
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object p0

    .line 256
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 257
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 258
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 241
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object p0

    .line 243
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 244
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 245
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 266
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 267
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object p0

    .line 269
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    const/4 v1, 0x0

    .line 270
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 271
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 321
    sget-object p0, Lcom/netease/yunxin/lite/util/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    .line 323
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 324
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 325
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
