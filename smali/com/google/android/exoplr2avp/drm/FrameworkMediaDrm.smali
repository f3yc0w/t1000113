.class public final Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm$Api31;
    }
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"

.field public static final DEFAULT_PROVIDER:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

.field private static final MOCK_LA_URL:Ljava/lang/String; = "<LA_URL>https://x</LA_URL>"

.field private static final MOCK_LA_URL_VALUE:Ljava/lang/String; = "https://x"

.field private static final TAG:Ljava/lang/String; = "FrameworkMediaDrm"

.field private static final UTF_16_BYTES_PER_CHARACTER:I = 0x2


# instance fields
.field private final mediaDrm:Landroid/media/MediaDrm;

.field private referenceCount:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-object v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;->INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;

    sput-object v0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/google/android/exoplr2avp/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 113
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 115
    iput v1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->referenceCount:I

    .line 116
    sget-object v1, Lcom/google/android/exoplr2avp/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->needsForceWidevineL3Workaround()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->forceWidevineL3(Landroid/media/MediaDrm;)V

    :cond_0
    return-void
.end method

.method private static addLaUrlAttributeIfMissing([B)[B
    .locals 7

    .line 482
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    .line 485
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 486
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v2

    .line 487
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v3

    const-string v4, "FrameworkMediaDrm"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v5

    .line 493
    sget-object v6, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "<LA_URL>"

    .line 494
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object p0

    :cond_1
    const-string p0, "</DATA>"

    .line 499
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v5, -0x1

    if-ne p0, v5, :cond_2

    const-string v5, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    .line 501
    invoke-static {v4, v5}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 504
    invoke-virtual {v0, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x34

    .line 508
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v1, v2

    .line 511
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v1, v3

    .line 512
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 514
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string v0, "Unexpected record count or type. Skipping LA_URL workaround."

    .line 489
    invoke-static {v4, v0}, Lcom/google/android/exoplr2avp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static adjustRequestData(Ljava/util/UUID;[B)[B
    .locals 1

    .line 456
    sget-object v0, Lcom/google/android/exoplr2avp/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 457
    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static adjustRequestInitData(Ljava/util/UUID;[B)[B
    .locals 2

    .line 411
    sget-object v0, Lcom/google/android/exoplr2avp/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    invoke-static {p1, p0}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 417
    :goto_0
    sget-object v0, Lcom/google/android/exoplr2avp/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 419
    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->addLaUrlAttributeIfMissing([B)[B

    move-result-object p1

    .line 418
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p1

    .line 429
    :cond_1
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/google/android/exoplr2avp/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/google/android/exoplr2avp/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 430
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 431
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 432
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 434
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTT"

    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    :cond_3
    invoke-static {p1, p0}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    return-object p1
.end method

.method private static adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 447
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplr2avp/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 448
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "video/mp4"

    .line 449
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "audio/mp4"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "cenc"

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 2

    .line 406
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplr2avp/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/exoplr2avp/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    :cond_0
    return-object p0
.end method

.method private static forceWidevineL3(Landroid/media/MediaDrm;)V
    .locals 2

    const-string v0, "securityLevel"

    const-string v1, "L3"

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;)",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/google/android/exoplr2avp/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 353
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    return-object p0

    .line 356
    :cond_0
    sget p0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-lt p0, v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_4

    .line 358
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 361
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 362
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    .line 363
    iget-object v5, v4, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 364
    iget-object v6, v4, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v4, v4, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 365
    invoke-static {v4, v6}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    invoke-static {v5}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->isPsshAtom([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    array-length v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 374
    new-array v1, v3, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 376
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 377
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    .line 378
    iget-object v4, v4, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 379
    array-length v5, v4

    .line 380
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 384
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->copyWithData([B)Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    .line 390
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_7

    .line 391
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    .line 392
    iget-object v3, v1, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->parseVersion([B)I

    move-result v3

    .line 393
    sget v4, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_5

    if-nez v3, :cond_5

    return-object v1

    .line 395
    :cond_5
    sget v4, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v4, v5, :cond_6

    if-ne v3, v2, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 401
    :cond_7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    return-object p0
.end method

.method public static isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/util/UUID;)Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;
    .locals 2

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 68
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameworkMediaDrm"

    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p0, Lcom/google/android/exoplr2avp/drm/DummyExoMediaDrm;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/drm/DummyExoMediaDrm;-><init>()V

    return-object p0
.end method

.method private static needsForceWidevineL3Workaround()Z
    .locals 2

    .line 472
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ASUS_Z00AD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/util/UUID;)Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 105
    new-instance v0, Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    .line 103
    new-instance v0, Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 2

    monitor-enter p0

    .line 288
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->referenceCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 289
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->referenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeSession([B)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public bridge synthetic createCryptoConfig([B)Lcom/google/android/exoplr2avp/decoder/CryptoConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->createCryptoConfig([B)Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;

    move-result-object p1

    return-object p1
.end method

.method public createCryptoConfig([B)Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 337
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplr2avp/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "securityLevel"

    .line 340
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    new-instance v1, Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 342
    invoke-static {v2}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;-><init>(Ljava/util/UUID;[BZ)V

    return-object v1
.end method

.method public getCryptoType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v0, p2}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    move-result-object v0

    .line 214
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v1, v0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {p2, v1}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->adjustRequestInitData(Ljava/util/UUID;[B)[B

    move-result-object p2

    .line 215
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, p2

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    move-object v5, v4

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    move-object v3, p1

    move v6, p3

    move-object v7, p4

    .line 218
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->adjustRequestData(Ljava/util/UUID;[B)[B

    move-result-object p2

    .line 222
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p3

    const-string p4, "https://x"

    .line 223
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 226
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    if-eqz v0, :cond_2

    iget-object p4, v0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 228
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 229
    iget-object p3, v0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 234
    :cond_2
    sget p4, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p4, v0, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result p1

    goto :goto_1

    :cond_3
    const/high16 p1, -0x80000000

    .line 236
    :goto_1
    new-instance p4, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {p4, p2, p3, p1}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;I)V

    return-object p4
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 2

    .line 307
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProvisionRequest()Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 253
    new-instance v1, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public synthetic lambda$setOnEventListener$1$FrameworkMediaDrm(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 127
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;->onEvent(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method

.method public synthetic lambda$setOnExpirationUpdateListener$3$FrameworkMediaDrm(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm;[BJ)V
    .locals 0

    .line 175
    invoke-interface {p1, p0, p3, p4, p5}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;[BJ)V

    return-void
.end method

.method public synthetic lambda$setOnKeyStatusChangeListener$2$FrameworkMediaDrm(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 3

    .line 148
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDrm$KeyStatus;

    .line 150
    new-instance v1, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;-><init>(I[B)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p1, p0, p3, p2, p5}, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;[BLjava/util/List;Z)V

    return-void
.end method

.method public openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/android/exoplr2avp/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p2

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public provideProvisionResponse([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->referenceCount:I

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .locals 2

    .line 268
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm$Api31;->requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 274
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 283
    throw p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public restoreKeys([B[B)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public setOnEventListener(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$HlPPQa9uGFwqt-g1jnApZHSjdZg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$HlPPQa9uGFwqt-g1jnApZHSjdZg;-><init>(Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;)V

    move-object p1, v1

    .line 123
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .locals 3

    .line 167
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v2, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$JvD_1BZJWEdNLOh76kK2Ggj9-aw;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$JvD_1BZJWEdNLOh76kK2Ggj9-aw;-><init>(Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnExpirationUpdateListener;)V

    .line 171
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    return-void

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOnKeyStatusChangeListener(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 3

    .line 140
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 147
    :cond_0
    new-instance v2, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$F7tW1tvuGvIYtQ7yRe6_ZPf0sI8;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$F7tW1tvuGvIYtQ7yRe6_ZPf0sI8;-><init>(Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V

    .line 144
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    return-void

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPlayerIdForSession([BLcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 2

    .line 191
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm$Api31;->setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLcom/google/android/exoplr2avp/analytics/PlayerId;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FrameworkMediaDrm"

    const-string/jumbo p2, "setLogSessionId failed."

    .line 195
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
