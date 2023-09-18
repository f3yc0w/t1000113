.class public Lcom/netease/yunxin/lite/util/http/URIUtils;
.super Ljava/lang/Object;
.source "URIUtils.java"


# static fields
.field static final allowed_query:Ljava/util/BitSet;

.field static final alpha:Ljava/util/BitSet;

.field static final alphanum:Ljava/util/BitSet;

.field static final digit:Ljava/util/BitSet;

.field static final escaped:Ljava/util/BitSet;

.field static final hex:Ljava/util/BitSet;

.field static final mark:Ljava/util/BitSet;

.field static final percent:Ljava/util/BitSet;

.field static final reserved:Ljava/util/BitSet;

.field static final unreserved:Ljava/util/BitSet;

.field static final uric:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/netease/yunxin/lite/util/http/URIUtils;->digit:Ljava/util/BitSet;

    const/16 v0, 0x30

    :goto_0
    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 19
    sget-object v2, Lcom/netease/yunxin/lite/util/http/URIUtils;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/netease/yunxin/lite/util/http/URIUtils;->alpha:Ljava/util/BitSet;

    const/16 v0, 0x61

    const/16 v2, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    .line 28
    sget-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->alpha:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x41

    const/16 v3, 0x41

    :goto_2
    const/16 v4, 0x5a

    if-gt v3, v4, :cond_2

    .line 31
    sget-object v4, Lcom/netease/yunxin/lite/util/http/URIUtils;->alpha:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 36
    :cond_2
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->reserved:Ljava/util/BitSet;

    const/16 v4, 0x3b

    .line 40
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x2f

    .line 41
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x3f

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x3a

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x40

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x26

    .line 45
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x3d

    .line 46
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x2b

    .line 47
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x24

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x2c

    .line 49
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 52
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->mark:Ljava/util/BitSet;

    const/16 v4, 0x2d

    .line 56
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x5f

    .line 57
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x2e

    .line 58
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x21

    .line 59
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x7e

    .line 60
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x2a

    .line 61
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x27

    .line 62
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x28

    .line 63
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    const/16 v4, 0x29

    .line 64
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 68
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v4, Lcom/netease/yunxin/lite/util/http/URIUtils;->alphanum:Ljava/util/BitSet;

    .line 72
    sget-object v5, Lcom/netease/yunxin/lite/util/http/URIUtils;->alpha:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 73
    sget-object v5, Lcom/netease/yunxin/lite/util/http/URIUtils;->digit:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 76
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v6, Lcom/netease/yunxin/lite/util/http/URIUtils;->unreserved:Ljava/util/BitSet;

    .line 80
    invoke-virtual {v6, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 81
    invoke-virtual {v6, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 84
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->percent:Ljava/util/BitSet;

    const/16 v4, 0x25

    .line 88
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 92
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->hex:Ljava/util/BitSet;

    .line 96
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    :goto_3
    const/16 v3, 0x66

    if-gt v0, v3, :cond_3

    .line 98
    sget-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->hex:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    const/16 v0, 0x46

    if-gt v2, v0, :cond_4

    .line 101
    sget-object v0, Lcom/netease/yunxin/lite/util/http/URIUtils;->hex:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 105
    :cond_4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/netease/yunxin/lite/util/http/URIUtils;->escaped:Ljava/util/BitSet;

    .line 109
    sget-object v2, Lcom/netease/yunxin/lite/util/http/URIUtils;->percent:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 110
    sget-object v2, Lcom/netease/yunxin/lite/util/http/URIUtils;->hex:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 114
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lcom/netease/yunxin/lite/util/http/URIUtils;->uric:Ljava/util/BitSet;

    .line 118
    sget-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 119
    sget-object v3, Lcom/netease/yunxin/lite/util/http/URIUtils;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 120
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 123
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/netease/yunxin/lite/util/http/URIUtils;->allowed_query:Ljava/util/BitSet;

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 128
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "original",
            "allowed",
            "charset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 149
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    new-instance p2, Ljava/lang/StringBuffer;

    array-length v0, p0

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 156
    aget-byte v1, p0, v0

    int-to-char v1, v1

    .line 157
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v1, 0x25

    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    aget-byte v1, p0, v0

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x10

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    .line 163
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v1, v1, 0xf

    .line 164
    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .line 165
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "null allowed characters"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "original is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unescaped",
            "charset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/yunxin/lite/util/http/URIUtils;->allowed_query:Ljava/util/BitSet;

    invoke-static {p0, v1, p1}, Lcom/netease/yunxin/lite/util/http/URIUtils;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
