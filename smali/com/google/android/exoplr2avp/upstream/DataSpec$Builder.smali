.class public final Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/DataSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customData:Ljava/lang/Object;

.field private flags:I

.field private httpBody:[B

.field private httpMethod:I

.field private httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private length:J

.field private position:J

.field private uri:Landroid/net/Uri;

.field private uriPositionOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpMethod:I

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->length:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    .line 73
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uriPositionOffset:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uriPositionOffset:J

    .line 74
    iget v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpMethod:I

    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpMethod:I

    .line 75
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpBody:[B

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpBody:[B

    .line 76
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    .line 77
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->position:J

    .line 78
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->length:J

    .line 79
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->key:Ljava/lang/String;

    .line 80
    iget v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->flags:I

    .line 81
    iget-object p1, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->customData:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->customData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/upstream/DataSpec$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 18

    move-object/from16 v0, p0

    .line 216
    iget-object v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uriPositionOffset:J

    iget v7, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpMethod:I

    iget-object v8, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpBody:[B

    iget-object v9, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v10, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->position:J

    iget-wide v12, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->length:J

    iget-object v14, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->key:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->flags:I

    iget-object v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->customData:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplr2avp/upstream/DataSpec$1;)V

    return-object v1
.end method

.method public setCustomData(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->customData:Ljava/lang/Object;

    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 194
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->flags:I

    return-object p0
.end method

.method public setHttpBody([B)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpBody:[B

    return-object p0
.end method

.method public setHttpMethod(I)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 124
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpMethod:I

    return-object p0
.end method

.method public setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setLength(J)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 172
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->length:J

    return-object p0
.end method

.method public setPosition(J)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->position:J

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUriPositionOffset(J)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->uriPositionOffset:J

    return-object p0
.end method
