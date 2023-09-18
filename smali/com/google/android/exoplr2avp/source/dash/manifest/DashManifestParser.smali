.class public Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 71
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 91
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJIJ)J"
        }
    .end annotation

    if-ltz p6, :cond_0

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p7, p2

    .line 1303
    invoke-static {p7, p8, p4, p5}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(JJ)J

    move-result-wide p6

    long-to-int p6, p6

    :goto_0
    const/4 p7, 0x0

    :goto_1
    if-ge p7, p6, :cond_1

    .line 1305
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object p8

    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p2, p4

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_1
    return-wide p2
.end method

.method private static checkContentTypeConsistency(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1729
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    return p0
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1706
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    return-object p0
.end method

.method private static filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 1646
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1647
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    .line 1648
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 1649
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1650
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->canReplace(Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1653
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getFinalAvailabilityTimeOffset(JJ)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p0, p2

    :goto_0
    const-wide p2, 0x7fffffffffffffffL

    cmp-long v2, p0, p2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p0

    :goto_1
    return-wide v0
.end method

.method private static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1671
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1673
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1674
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1675
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 1678
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const-string v0, "application/mp4"

    .line 1681
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1682
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "text/vtt"

    .line 1683
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "application/x-mp4-vtt"

    :cond_4
    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private isDvbProfileDeclared([Ljava/lang/String;)Z
    .locals 5

    .line 1975
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string/jumbo v4, "urn:dvb:dash:profile:dvb-dash:"

    .line 1976
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1630
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1635
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1636
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1638
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static parseCea608AccessibilityChannel(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1755
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1756
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1757
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1759
    sget-object v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1760
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 1761
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1763
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static parseCea708AccessibilityChannel(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1771
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1772
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1773
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1775
    sget-object v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1776
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 1777
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1779
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpdParser"

    invoke-static {v2, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1829
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 1833
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 1745
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    .line 1746
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    .line 1747
    invoke-static {p0, v3, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1749
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1750
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1751
    new-instance p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected static parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    .line 1930
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1934
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "fa01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "f801"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "a000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "4000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static parseDtsChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string/jumbo v0, "value"

    const/4 v1, -0x1

    .line 1897
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/16 v0, 0x21

    if-ge p0, v0, :cond_0

    move v1, p0

    :cond_0
    return v1
.end method

.method protected static parseDtsxChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    .line 1911
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x10

    .line 1915
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1819
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 1823
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1787
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1788
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1789
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v3, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 1790
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v4, "JOC"

    .line 1791
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 1792
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v2, "ec+3"

    .line 1793
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string p0, "audio/eac3-joc"

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "audio/eac3"

    return-object p0
.end method

.method protected static parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    .line 1862
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1863
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    :goto_0
    return p2
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 1802
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1804
    sget-object v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1805
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 1806
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 1807
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1808
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 1809
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1852
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1853
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method protected static parseLastSegmentNumberSupplementalProperty(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1950
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1951
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1952
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/last-segment-number"

    invoke-static {v3, v2}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1954
    iget-object p0, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1857
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1858
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method protected static parseMpegChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    const-string/jumbo v0, "value"

    const/4 v1, -0x1

    .line 1880
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    .line 1881
    sget-object v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->MPEG_CHANNEL_CONFIGURATION_MAPPING:[I

    array-length v2, v0

    if-ge p0, v2, :cond_0

    .line 1882
    aget v1, v0, p0

    :cond_0
    return v1
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1867
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method protected static parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 1841
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1842
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1843
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1845
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1847
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .line 539
    new-instance v7, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method protected buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;
    .locals 9

    .line 1237
    new-instance v8, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-wide v5, p3

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v8
.end method

.method protected buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;)Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;
    .locals 8

    .line 1129
    new-instance v7, Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;)V

    return-object v7
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplr2avp/Format;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplr2avp/Format;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    .line 794
    invoke-static {p2, v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/eac3"

    .line 795
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 796
    invoke-static/range {p14 .. p14}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseEac3SupplementalProperties(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/eac3-joc"

    .line 797
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v5, "ec+3"

    .line 801
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSelectionFlagsFromRoleDescriptors(Ljava/util/List;)I

    move-result v7

    .line 802
    invoke-virtual {p0, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromRoleDescriptors(Ljava/util/List;)I

    move-result v4

    move-object/from16 v8, p11

    .line 803
    invoke-virtual {p0, v8}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromAccessibilityDescriptors(Ljava/util/List;)I

    move-result v9

    or-int/2addr v4, v9

    move-object/from16 v9, p13

    .line 804
    invoke-virtual {p0, v9}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v9

    or-int/2addr v4, v9

    move-object/from16 v9, p14

    .line 805
    invoke-virtual {p0, v9}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromProperties(Ljava/util/List;)I

    move-result v9

    or-int/2addr v4, v9

    .line 807
    new-instance v9, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    move-object v10, p1

    .line 809
    invoke-virtual {v9, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v9

    .line 810
    invoke-virtual {v9, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    .line 811
    invoke-virtual {v1, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    .line 812
    invoke-virtual {v1, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    move/from16 v5, p8

    .line 813
    invoke-virtual {v1, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    .line 814
    invoke-virtual {v1, v7}, Lcom/google/android/exoplr2avp/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    .line 815
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    move-object/from16 v4, p9

    .line 816
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    .line 818
    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    invoke-virtual {v1, p3}, Lcom/google/android/exoplr2avp/Format$Builder;->setWidth(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/android/exoplr2avp/Format$Builder;->setHeight(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v2

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplr2avp/Format$Builder;

    goto :goto_1

    .line 820
    :cond_1
    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v4, p6

    .line 821
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v2

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    goto :goto_1

    .line 822
    :cond_2
    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, -0x1

    const-string v3, "application/cea-608"

    .line 824
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 825
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseCea608AccessibilityChannel(Ljava/util/List;)I

    move-result v2

    goto :goto_0

    :cond_3
    const-string v3, "application/cea-708"

    .line 826
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 827
    invoke-static/range {p11 .. p11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseCea708AccessibilityChannel(Ljava/util/List;)I

    move-result v2

    .line 829
    :cond_4
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplr2avp/Format$Builder;

    goto :goto_1

    .line 830
    :cond_5
    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 831
    invoke-virtual {v1, p3}, Lcom/google/android/exoplr2avp/Format$Builder;->setWidth(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/google/android/exoplr2avp/Format$Builder;->setHeight(I)Lcom/google/android/exoplr2avp/Format$Builder;

    .line 834
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    return-object v1
.end method

.method protected buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Period;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;"
        }
    .end annotation

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    .line 242
    new-instance v21, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;-><init>(JJJZJJJJLcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v21
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ")",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Period;"
        }
    .end annotation

    .line 378
    new-instance v7, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;)V

    return-object v7
.end method

.method protected buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;
    .locals 7

    .line 1350
    new-instance v6, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method protected buildRepresentation(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;"
        }
    .end annotation

    .line 843
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 845
    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    .line 847
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeType:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p2

    .line 851
    :goto_0
    iget-object p2, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 852
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 853
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 854
    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->filterRedundantIncompleteSchemeDatas(Ljava/util/ArrayList;)V

    .line 855
    new-instance p4, Lcom/google/android/exoplr2avp/drm/DrmInitData;

    invoke-direct {p4, p3, p2}, Lcom/google/android/exoplr2avp/drm/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p4}, Lcom/google/android/exoplr2avp/Format$Builder;->setDrmInitData(Lcom/google/android/exoplr2avp/drm/DrmInitData;)Lcom/google/android/exoplr2avp/Format$Builder;

    .line 857
    :cond_2
    iget-object v6, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->inbandEventStreams:Ljava/util/ArrayList;

    .line 858
    invoke-virtual {v6, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 859
    iget-wide v1, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->revisionId:J

    .line 861
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrls:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;

    iget-object v7, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->essentialProperties:Ljava/util/List;

    iget-object v8, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->supplementalProperties:Ljava/util/List;

    const/4 v9, 0x0

    .line 859
    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->newInstance(JLcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    move-result-object p1

    return-object p1
.end method

.method protected buildSegmentList(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;",
            ">;JJ)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    .line 984
    new-instance v18, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v0, v18

    .line 993
    invoke-static/range {p14 .. p15}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v14

    .line 994
    invoke-static/range {p16 .. p17}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v16

    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v18
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;",
            "JJ)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 1072
    new-instance v21, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, v21

    .line 1083
    invoke-static/range {p17 .. p18}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v17

    .line 1084
    invoke-static/range {p19 .. p20}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v19

    invoke-direct/range {v0 .. v20}, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;JJ)V

    return-object v21
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;
    .locals 1

    .line 1312
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 11

    .line 910
    new-instance v10, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJ)V

    return-object v10
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;
    .locals 1

    .line 265
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 103
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 104
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string p2, "MPD"

    .line 105
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    .line 106
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 112
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    move-result-object p1

    return-object p1
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "id"

    const/4 v1, -0x1

    .line 394
    invoke-static {v14, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v27

    .line 395
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v13, 0x0

    const-string v2, "mimeType"

    .line 397
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v2, "codecs"

    .line 398
    invoke-interface {v14, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v2, "width"

    .line 399
    invoke-static {v14, v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v30

    const-string v2, "height"

    .line 400
    invoke-static {v14, v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v31

    const/high16 v2, -0x40800000    # -1.0f

    .line 401
    invoke-static {v14, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v32

    const-string v2, "audioSamplingRate"

    .line 403
    invoke-static {v14, v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v33

    const-string v12, "lang"

    .line 404
    invoke-interface {v14, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    .line 405
    invoke-interface {v14, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 410
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 411
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 413
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v34, 0x0

    move-object/from16 v35, p3

    move/from16 v36, v0

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v41, v13

    const/16 v37, -0x1

    const/16 v40, 0x0

    move-wide/from16 v2, p6

    move-wide/from16 v0, p8

    .line 418
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v13, "BaseURL"

    .line 419
    invoke-static {v14, v13}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-nez v40, :cond_0

    .line 422
    invoke-virtual {v15, v14, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v2

    const/16 v40, 0x1

    :cond_0
    move-object/from16 v13, p2

    move-wide/from16 p6, v0

    move-object/from16 v17, v10

    move/from16 v10, p14

    .line 425
    invoke-virtual {v15, v14, v13, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    move-wide/from16 v0, p6

    move-wide/from16 v42, v2

    move-object v15, v5

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move-object/from16 v3, v17

    move/from16 v51, v36

    move-object/from16 v53, v38

    const/16 v52, 0x0

    move-object/from16 v36, v4

    move-object/from16 v38, v6

    goto/16 :goto_6

    :cond_2
    move-object/from16 v13, p2

    move-wide/from16 p6, v0

    move-object/from16 v17, v10

    move/from16 v10, p14

    const-string v0, "ContentProtection"

    .line 426
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    .line 428
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v41, v1

    check-cast v41, Ljava/lang/String;

    .line 431
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 432
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v0, "ContentComponent"

    .line 434
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 435
    invoke-interface {v14, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v38

    invoke-static {v15, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v15

    move/from16 v13, v36

    invoke-static {v13, v15}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v13

    move-object/from16 v53, v0

    move-object/from16 v52, v1

    move-wide/from16 v42, v2

    move-object/from16 v36, v4

    move-object v15, v5

    move-object/from16 v38, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move/from16 v51, v13

    move-object/from16 v3, v17

    :goto_2
    move-wide/from16 v0, p6

    goto/16 :goto_6

    :cond_5
    move/from16 v13, v36

    move-object/from16 v15, v38

    const/4 v1, 0x0

    const-string v0, "Role"

    .line 437
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 438
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const-string v0, "AudioChannelConfiguration"

    .line 439
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 440
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    move/from16 v37, v0

    :goto_3
    move-object/from16 v52, v1

    move-wide/from16 v42, v2

    move-object/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move/from16 v51, v13

    move-object/from16 v53, v15

    move-object/from16 v3, v17

    move-wide/from16 v0, p6

    move-object v15, v5

    goto/16 :goto_6

    :cond_7
    const-string v0, "Accessibility"

    .line 441
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 442
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v0, "EssentialProperty"

    .line 443
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 444
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    const-string v0, "SupplementalProperty"

    .line 445
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 446
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const-string v0, "Representation"

    .line 447
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 451
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    move-object/from16 v16, v4

    goto :goto_4

    :cond_b
    move-object/from16 v16, p2

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move-wide/from16 v42, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v28

    move-object/from16 v36, v4

    move-object/from16 v4, v29

    move-object/from16 v44, v5

    move/from16 v5, v30

    move-object/from16 v38, v6

    move/from16 v6, v31

    move-object/from16 v45, v7

    move/from16 v7, v32

    move-object/from16 v46, v8

    move/from16 v8, v37

    move-object/from16 v47, v9

    move/from16 v9, v33

    move-object/from16 v48, v17

    move-object v10, v15

    move-object/from16 v49, v11

    move-object/from16 v11, v46

    move-object/from16 v50, v12

    move-object/from16 v12, v47

    move/from16 v51, v13

    move-object/from16 v52, v18

    move-object/from16 v13, v45

    move-object/from16 v14, v38

    move-object/from16 v53, v15

    move-object/from16 v15, v35

    move-wide/from16 v16, p10

    move-wide/from16 v18, p4

    move-wide/from16 v20, v42

    move-wide/from16 v22, p6

    move-wide/from16 v24, p12

    move/from16 v26, p14

    .line 449
    invoke-virtual/range {v0 .. v26}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v0

    .line 471
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 473
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    move/from16 v14, v51

    .line 472
    invoke-static {v14, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v1

    move-object/from16 v15, v44

    .line 474
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p1

    move/from16 v51, v1

    move-object/from16 v3, v48

    goto/16 :goto_2

    :cond_c
    move-object/from16 v52, v1

    move-wide/from16 v42, v2

    move-object/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move v14, v13

    move-object/from16 v53, v15

    move-object/from16 v48, v17

    move-object v15, v5

    const-string v0, "SegmentBase"

    move-object/from16 v13, p1

    .line 475
    invoke-static {v13, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 476
    move-object/from16 v0, v35

    check-cast v0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object/from16 v11, p0

    invoke-virtual {v11, v13, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    move-object/from16 v35, v0

    move/from16 v51, v14

    move-object/from16 v3, v48

    move-wide/from16 v0, p6

    move-object v14, v13

    goto/16 :goto_6

    :cond_d
    move-object/from16 v11, p0

    const-string v0, "SegmentList"

    .line 477
    invoke-static {v13, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-wide/from16 v0, p6

    .line 479
    invoke-virtual {v11, v13, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v16

    .line 480
    move-object/from16 v2, v35

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p10

    move-wide/from16 v5, p4

    move-wide/from16 v7, v42

    move-wide/from16 v9, v16

    move/from16 v51, v14

    move-object v14, v11

    move-wide/from16 v11, p12

    .line 481
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-object/from16 v35, v0

    move-object v14, v13

    :goto_5
    move-wide/from16 v0, v16

    move-object/from16 v3, v48

    goto :goto_6

    :cond_e
    move-wide/from16 v0, p6

    move/from16 v51, v14

    move-object v14, v11

    const-string v2, "SegmentTemplate"

    .line 489
    invoke-static {v13, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 491
    invoke-virtual {v14, v13, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v16

    .line 492
    move-object/from16 v2, v35

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v38

    move-wide/from16 v4, p10

    move-wide/from16 v6, p4

    move-wide/from16 v8, v42

    move-wide/from16 v10, v16

    move-object v14, v13

    move-wide/from16 v12, p12

    .line 493
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_5

    :cond_f
    move-object v14, v13

    const-string v2, "InbandEventStream"

    .line 502
    invoke-static {v14, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 503
    invoke-static {v14, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v2

    move-object/from16 v3, v48

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    move-object/from16 v3, v48

    const-string v2, "Label"

    .line 504
    invoke-static {v14, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 505
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLabel(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v39, v2

    goto :goto_6

    .line 506
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 507
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_12
    :goto_6
    const-string v2, "AdaptationSet"

    .line 509
    invoke-static {v14, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 513
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 516
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move-object/from16 p3, v39

    move-object/from16 p4, v41

    move-object/from16 p5, v49

    move-object/from16 p6, v3

    .line 515
    invoke-virtual/range {p1 .. p6}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildRepresentation(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    move-result-object v2

    .line 514
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    move-object/from16 p1, p0

    move/from16 p2, v27

    move/from16 p3, v51

    move-object/from16 p4, v0

    move-object/from16 p5, v47

    move-object/from16 p6, v45

    move-object/from16 p7, v38

    .line 523
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    move-result-object v0

    return-object v0

    :cond_14
    move-object v10, v3

    move-object v5, v15

    move-object/from16 v4, v36

    move-object/from16 v6, v38

    move-wide/from16 v2, v42

    move-object/from16 v7, v45

    move-object/from16 v8, v46

    move-object/from16 v9, v47

    move-object/from16 v11, v49

    move-object/from16 v12, v50

    move/from16 v36, v51

    move-object/from16 v13, v52

    move-object/from16 v38, v53

    move-object/from16 v15, p0

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 1457
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1471
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDtsxChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_2

    .line 1464
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseMpegChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_2

    .line 1475
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDolbyChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_2

    :pswitch_3
    const-string/jumbo v0, "value"

    .line 1461
    invoke-static {p1, v0, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 1468
    :pswitch_4
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDtsChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    .line 1482
    :cond_7
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 1483
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    const/4 v0, 0x0

    const-string v1, "availabilityTimeOffset"

    .line 1443
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    const-string p2, "INF"

    .line 1447
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 1450
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const p2, 0x49742400    # 1000000.0f

    mul-float p1, p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method protected parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "dvb:priority"

    .line 1400
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1403
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    const-string v3, "dvb:weight"

    .line 1405
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1406
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    const-string v4, "serviceLocation"

    .line 1407
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BaseURL"

    .line 1408
    invoke-static {p1, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1409
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/UriUtil;->isAbsolute(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    move-object v0, p1

    :cond_3
    new-array p2, v2, [Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    .line 1413
    new-instance p3, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    invoke-direct {p3, p1, v0, v1, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p3, p2, v5

    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 1416
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_7

    .line 1418
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    .line 1419
    iget-object v6, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/google/android/exoplr2avp/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_5

    move-object v7, v6

    goto :goto_3

    :cond_5
    move-object v7, v0

    :goto_3
    if-eqz p3, :cond_6

    .line 1423
    iget v1, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->priority:I

    .line 1424
    iget v3, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->weight:I

    .line 1425
    iget-object v7, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 1427
    :cond_6
    new-instance v4, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    invoke-direct {v4, v6, v7, v1, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    return-object v2
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 577
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 579
    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string/jumbo v1, "value"

    .line 581
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "default_KID"

    .line 582
    invoke-static {p1, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->getAttributeValueIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "00000000-0000-0000-0000-000000000000"

    .line 584
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "\\s+"

    .line 585
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 586
    array-length v4, v3

    new-array v4, v4, [Ljava/util/UUID;

    const/4 v5, 0x0

    .line 587
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 588
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 590
    :cond_3
    sget-object v3, Lcom/google/android/exoplr2avp/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-static {v3, v4, v0}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 591
    sget-object v4, Lcom/google/android/exoplr2avp/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    move-object v5, v0

    goto :goto_5

    :cond_4
    move-object v3, v0

    goto :goto_4

    .line 598
    :pswitch_1
    sget-object v4, Lcom/google/android/exoplr2avp/C;->WIDEVINE_UUID:Ljava/util/UUID;

    goto :goto_2

    .line 595
    :pswitch_2
    sget-object v4, Lcom/google/android/exoplr2avp/C;->PLAYREADY_UUID:Ljava/util/UUID;

    :goto_2
    move-object v1, v0

    move-object v3, v1

    move-object v5, v3

    goto :goto_5

    :cond_5
    :goto_3
    move-object v1, v0

    move-object v3, v1

    :goto_4
    move-object v4, v3

    move-object v5, v4

    .line 606
    :cond_6
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "ms:laurl"

    .line 607
    invoke-static {p1, v6}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "licenseUrl"

    .line 608
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_7
    const/4 v6, 0x4

    if-nez v3, :cond_8

    const-string v7, "pssh"

    .line 610
    invoke-static {p1, v7}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTagIgnorePrefix(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 611
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v6, :cond_8

    .line 613
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 614
    invoke-static {v3}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v3, "MpdParser"

    const-string v6, "Skipping malformed cenc:pssh data"

    .line 616
    invoke-static {v3, v6}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_6

    :cond_8
    if-nez v3, :cond_9

    .line 619
    sget-object v7, Lcom/google/android/exoplr2avp/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 620
    invoke-virtual {v7, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "mspr:pro"

    .line 621
    invoke-static {p1, v7}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 622
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v6, :cond_9

    .line 624
    sget-object v3, Lcom/google/android/exoplr2avp/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 626
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 625
    invoke-static {v3, v6}, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v3

    goto :goto_6

    .line 628
    :cond_9
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_a
    :goto_6
    const-string v6, "ContentProtection"

    .line 630
    invoke-static {p1, v6}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v4, :cond_b

    .line 632
    new-instance v0, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    const-string/jumbo p1, "video/mp4"

    invoke-direct {v0, v4, v5, p1, v3}, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 633
    :cond_b
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 549
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 552
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "video"

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "text"

    .line 556
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    return v1
.end method

.method protected parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/io/ByteArrayOutputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "id"

    const-wide/16 v2, 0x0

    .line 1153
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "duration"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1154
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "presentationTime"

    .line 1155
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    move-wide/from16 v13, p4

    .line 1156
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    const-wide/32 v13, 0xf4240

    move-wide v11, v1

    move-wide/from16 v15, p4

    .line 1158
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    const-string v3, "messageData"

    const/4 v4, 0x0

    .line 1159
    invoke-static {v0, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v12, p0

    move-object/from16 v4, p6

    .line 1160
    invoke-virtual {v12, v0, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    .line 1162
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-nez v3, :cond_0

    goto :goto_0

    .line 1168
    :cond_0
    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    move-object v11, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1163
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildEvent(Ljava/lang/String;Ljava/lang/String;JJ[B)Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    move-result-object v0

    .line 1161
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected parseEventObject(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/ByteArrayOutputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1183
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 1184
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_0
    const-string v1, "Event"

    .line 1188
    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1189
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 1225
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1222
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_2

    .line 1219
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_2

    .line 1216
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_2

    .line 1213
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_2

    .line 1210
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_2

    .line 1207
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 1204
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 1197
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1198
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1200
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1199
    invoke-interface {v0, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1194
    :pswitch_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_2

    :pswitch_a
    const/4 v1, 0x0

    .line 1191
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1229
    :cond_0
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    goto/16 :goto_0

    .line 1231
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 1232
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 1097
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "value"

    .line 1098
    invoke-static {p1, v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timescale"

    const-wide/16 v3, 0x1

    .line 1099
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 1100
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v12, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1103
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "Event"

    .line 1104
    invoke-static {p1, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v9

    move-object v8, v12

    .line 1106
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;JLjava/io/ByteArrayOutputStream;)Landroid/util/Pair;

    move-result-object v2

    .line 1107
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1109
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    const-string v2, "EventStream"

    .line 1111
    invoke-static {p1, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v7, p1, [J

    .line 1114
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result p1

    new-array v8, p1, [Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    const/4 p1, 0x0

    .line 1115
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1116
    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1117
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v7, p1

    .line 1118
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    aput-object v2, v8, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p0

    move-object v3, v0

    move-object v4, v1

    move-wide v5, v9

    .line 1120
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildEventStream(Ljava/lang/String;Ljava/lang/String;J[J[Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;)Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

    move-result-object p1

    return-object p1
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;
    .locals 2

    const-string/jumbo v0, "sourceURL"

    const-string v1, "range"

    .line 1326
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected parseLabel(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Label"

    .line 1384
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v12, p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "profiles"

    .line 119
    invoke-virtual {v14, v12, v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseProfiles(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->isDvbProfileDeclared([Ljava/lang/String;)Z

    move-result v13

    const-string v1, "availabilityStartTime"

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    invoke-static {v12, v1, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    const-string v1, "mediaPresentationDuration"

    .line 121
    invoke-static {v12, v1, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    const-string v1, "minBufferTime"

    .line 122
    invoke-static {v12, v1, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    const/4 v11, 0x0

    const-string/jumbo v1, "type"

    .line 123
    invoke-interface {v12, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamic"

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v1, "minimumUpdatePeriod"

    .line 126
    invoke-static {v12, v1, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v22, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v22, v9

    :goto_0
    if-eqz v21, :cond_1

    const-string/jumbo v1, "timeShiftBufferDepth"

    .line 128
    invoke-static {v12, v1, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v24, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v24, v9

    :goto_1
    if-eqz v21, :cond_2

    const-string/jumbo v1, "suggestedPresentationDelay"

    .line 130
    invoke-static {v12, v1, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v26, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v26, v9

    :goto_2
    const-string v1, "publishTime"

    .line 131
    invoke-static {v12, v1, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v28

    if-eqz v21, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_3

    :cond_3
    move-wide v3, v9

    .line 137
    :goto_3
    new-instance v5, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v13, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/high16 v30, -0x80000000

    const/high16 v1, -0x80000000

    .line 141
    :goto_4
    invoke-direct {v5, v6, v7, v1, v8}, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-array v1, v8, [Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    aput-object v5, v1, v0

    .line 143
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v21, :cond_5

    move-wide v1, v9

    goto :goto_5

    :cond_5
    const-wide/16 v1, 0x0

    :goto_5
    move-wide/from16 v32, v1

    move-object/from16 v34, v11

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 151
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 152
    invoke-static {v12, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v30, :cond_6

    .line 155
    invoke-virtual {v14, v12, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v3

    const/16 v30, 0x1

    .line 158
    :cond_6
    invoke-virtual {v14, v12, v7, v13}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_7
    const-string v0, "ProgramInformation"

    .line 159
    invoke-static {v12, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_7
    move-object/from16 v41, v6

    move-object/from16 v43, v7

    move-wide/from16 v44, v9

    move-object v14, v11

    const/16 v42, 0x1

    move-object v11, v5

    goto/16 :goto_c

    :cond_8
    const-string v0, "UTCTiming"

    .line 161
    invoke-static {v12, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 162
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_7

    :cond_9
    const-string v0, "Location"

    .line 163
    invoke-static {v12, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_7

    :cond_a
    const-string v0, "ServiceDescription"

    .line 165
    invoke-static {v12, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseServiceDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_7

    :cond_b
    const-string v0, "Period"

    .line 167
    invoke-static {v12, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v31, :cond_10

    .line 171
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v2, v6

    goto :goto_8

    :cond_c
    move-object v2, v7

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v38, v3

    move-wide/from16 v3, v32

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-wide/from16 v5, v38

    move-object/from16 v43, v7

    const/16 v42, 0x1

    move-wide v7, v15

    move-wide/from16 v44, v9

    move-wide/from16 v9, v24

    move-object v14, v11

    move v11, v13

    .line 169
    invoke-virtual/range {v0 .. v11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;

    move-result-object v0

    .line 177
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    .line 178
    iget-wide v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    cmp-long v4, v2, v44

    if-nez v4, :cond_e

    if-eqz v21, :cond_d

    move-object/from16 v11, v40

    const/4 v8, 0x1

    goto :goto_a

    .line 184
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to determine start of period "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0, v14}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v0

    throw v0

    .line 188
    :cond_e
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v44

    if-nez v0, :cond_f

    move-object/from16 v11, v40

    move-wide/from16 v9, v44

    goto :goto_9

    .line 190
    :cond_f
    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    add-long v9, v4, v2

    move-object/from16 v11, v40

    .line 191
    :goto_9
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v32, v9

    move/from16 v8, v31

    :goto_a
    move/from16 v31, v8

    goto :goto_b

    :cond_10
    move-wide/from16 v38, v3

    move-object/from16 v41, v6

    move-object/from16 v43, v7

    move-wide/from16 v44, v9

    move-object v14, v11

    const/16 v42, 0x1

    move-object v11, v5

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_b
    move-wide/from16 v3, v38

    :goto_c
    const-string v0, "MPD"

    .line 196
    invoke-static {v12, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    cmp-long v0, v17, v44

    if-nez v0, :cond_13

    cmp-long v0, v32, v44

    if-eqz v0, :cond_11

    move-wide/from16 v3, v32

    goto :goto_e

    :cond_11
    if-eqz v21, :cond_12

    goto :goto_d

    :cond_12
    const-string v0, "Unable to determine duration of static manifest."

    .line 203
    invoke-static {v0, v14}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v0

    throw v0

    :cond_13
    :goto_d
    move-wide/from16 v3, v17

    .line 208
    :goto_e
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v5, v19

    move/from16 v7, v21

    move-wide/from16 v8, v22

    move-object/from16 v38, v11

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move-wide/from16 v14, v28

    move-object/from16 v16, v34

    move-object/from16 v17, v35

    move-object/from16 v18, v37

    move-object/from16 v19, v36

    move-object/from16 v20, v38

    .line 212
    invoke-virtual/range {v0 .. v20}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJJLcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0

    :cond_14
    const-string v0, "No periods found."

    .line 209
    invoke-static {v0, v14}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v0

    throw v0

    :cond_15
    move-object v5, v11

    move-object v11, v14

    move-object/from16 v6, v41

    move-object/from16 v7, v43

    move-wide/from16 v9, v44

    const/4 v8, 0x1

    move-object/from16 v14, p0

    goto/16 :goto_6
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;JJJJZ)Landroid/util/Pair;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;JJJJZ)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v12, 0x0

    const-string v0, "id"

    .line 299
    invoke-interface {v14, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v0, "start"

    move-wide/from16 v1, p3

    .line 300
    invoke-static {v14, v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p7, v10

    if-eqz v0, :cond_0

    add-long v0, p7, v17

    move-wide/from16 v19, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v19, v10

    :goto_0
    const-string v0, "duration"

    .line 303
    invoke-static {v14, v0, v10, v11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    .line 306
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 308
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move-wide/from16 v6, p5

    move-wide/from16 v25, v10

    move-object/from16 v24, v12

    move-object/from16 v27, v24

    const/16 v23, 0x0

    .line 312
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "BaseURL"

    .line 313
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v23, :cond_1

    .line 316
    invoke-virtual {v15, v14, v6, v7}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v6

    const/16 v23, 0x1

    :cond_1
    move-object/from16 v4, p2

    move/from16 v5, p11

    .line 319
    invoke-virtual {v15, v14, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v32, v8

    move-object/from16 v30, v9

    move-wide/from16 v33, v10

    move-object/from16 v31, v12

    move-object v15, v13

    goto/16 :goto_6

    :cond_2
    move-object/from16 v4, p2

    move/from16 v5, p11

    const-string v0, "AdaptationSet"

    .line 320
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v2, v9

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v24

    move-wide/from16 v4, v21

    move-wide/from16 v28, v6

    move-object v15, v8

    move-object/from16 v30, v9

    move-wide/from16 v8, v25

    move-wide/from16 v10, v19

    move-object/from16 p3, v15

    move-object v15, v13

    move-wide/from16 v12, p9

    move/from16 v14, p11

    .line 322
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    move-result-object v0

    .line 321
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p1

    move-object/from16 v32, p3

    goto :goto_3

    :cond_4
    move-wide/from16 v28, v6

    move-object/from16 p3, v8

    move-object/from16 v30, v9

    move-object v15, v13

    const-string v0, "EventStream"

    move-object/from16 v14, p1

    .line 332
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseEventStream(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v1

    :goto_3
    const/16 v31, 0x0

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    :cond_5
    move-object/from16 v1, p3

    const-string v0, "SegmentBase"

    .line 334
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v13, p0

    move-object/from16 v32, v1

    const/4 v11, 0x0

    .line 335
    invoke-virtual {v13, v14, v11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    move-object/from16 v24, v0

    move-object/from16 v31, v11

    move-wide/from16 v6, v28

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_6

    :cond_6
    move-object/from16 v13, p0

    move-object/from16 v32, v1

    const/4 v11, 0x0

    const-string v0, "SegmentList"

    .line 336
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 338
    invoke-virtual {v13, v14, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v24

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    move-wide/from16 v7, v28

    move-wide/from16 v9, v24

    move-object/from16 v31, v11

    move-wide/from16 v11, p9

    .line 340
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-wide/from16 v25, v24

    move-wide/from16 v6, v28

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    move-object/from16 v24, v0

    goto :goto_6

    :cond_7
    move-object/from16 v31, v11

    const-string v0, "SegmentTemplate"

    .line 348
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 350
    invoke-virtual {v13, v14, v10, v11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v24

    const/4 v2, 0x0

    .line 355
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v8, v28

    move-wide/from16 v33, v10

    move-wide/from16 v10, v24

    move-wide/from16 v12, p9

    .line 352
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    move-wide/from16 v25, v24

    move-wide/from16 v6, v28

    goto :goto_4

    :cond_8
    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    const-string v0, "AssetIdentifier"

    .line 361
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 362
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_5

    .line 364
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5
    move-wide/from16 v6, v28

    :goto_6
    const-string v0, "Period"

    .line 366
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 p1, p0

    move-object/from16 p2, v16

    move-wide/from16 p3, v17

    move-object/from16 p5, v15

    move-object/from16 p6, v32

    move-object/from16 p7, v27

    .line 369
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_a
    move-object v13, v15

    move-object/from16 v9, v30

    move-object/from16 v12, v31

    move-object/from16 v8, v32

    move-wide/from16 v10, v33

    move-object/from16 v15, p0

    goto/16 :goto_1
.end method

.method protected parseProfiles(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1612
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    const-string p2, ","

    .line 1616
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected parseProgramInformation(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "moreInformationURL"

    const/4 v1, 0x0

    .line 1358
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "lang"

    .line 1359
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v1

    move-object v2, v0

    .line 1361
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "Title"

    .line 1362
    invoke-static {p1, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_0
    const-string v3, "Source"

    .line 1364
    invoke-static {p1, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1365
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "Copyright"

    .line 1366
    invoke-static {p1, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1367
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1369
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :goto_2
    const-string v2, "ProgramInformation"

    .line 1371
    invoke-static {p1, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1372
    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;

    move-object v2, p1

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplr2avp/source/dash/manifest/ProgramInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    move-object v2, v5

    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;
    .locals 7

    const/4 v0, 0x0

    .line 1335
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1338
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, -0x1

    if-eqz p1, :cond_0

    const-string v0, "-"

    .line 1340
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1341
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1342
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p2, 0x1

    .line 1343
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    move-wide v5, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v5, p2

    :goto_0
    move-wide v3, v0

    move-object v1, p0

    .line 1346
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildRangedUri(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;JJJJJZ)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;",
            "JJJJJZ)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const/4 v0, 0x0

    const-string v1, "id"

    .line 673
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "bandwidth"

    const/4 v2, -0x1

    .line 674
    invoke-static {v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string v1, "mimeType"

    move-object/from16 v2, p3

    .line 676
    invoke-static {v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "codecs"

    move-object/from16 v2, p4

    .line 677
    invoke-static {v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v1, "width"

    move/from16 v2, p5

    .line 678
    invoke-static {v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    const-string v1, "height"

    move/from16 v2, p6

    .line 679
    invoke-static {v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    move/from16 v1, p7

    .line 680
    invoke-static {v14, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v22

    const-string v1, "audioSamplingRate"

    move/from16 v2, p9

    .line 682
    invoke-static {v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 684
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 685
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 686
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v1, p13

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 687
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v10, p14

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 689
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move/from16 v24, p8

    move-wide/from16 v5, p20

    move-wide/from16 v1, p22

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p15

    .line 693
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "BaseURL"

    .line 694
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v26, :cond_0

    .line 697
    invoke-virtual {v15, v14, v5, v6}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    const/16 v26, 0x1

    :cond_0
    move-object/from16 v8, p2

    move/from16 v3, p26

    .line 700
    invoke-virtual {v15, v14, v8, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    move-object/from16 v31, v7

    move-object v15, v13

    move/from16 v7, v24

    move-object/from16 v24, v0

    goto :goto_2

    :cond_1
    move-object/from16 v8, p2

    move/from16 v3, p26

    const-string v4, "AudioChannelConfiguration"

    .line 701
    invoke-static {v14, v4}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    move-object/from16 v24, v0

    move-object/from16 v31, v7

    move-object v15, v13

    move v7, v4

    :goto_2
    move-object v13, v11

    move-object v11, v9

    goto/16 :goto_7

    :cond_2
    const-string v4, "SegmentBase"

    .line 703
    invoke-static {v14, v4}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 704
    check-cast v0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-virtual {v15, v14, v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v4, "SegmentList"

    .line 705
    invoke-static {v14, v4}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 707
    invoke-virtual {v15, v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v27

    .line 708
    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p16

    move-wide/from16 v29, v5

    move-wide/from16 v5, p18

    move-object/from16 v31, v7

    move-wide/from16 v7, v29

    move-object/from16 v32, v9

    move-wide/from16 v9, v27

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move-wide/from16 v11, p24

    .line 709
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    move-object v15, v13

    :goto_3
    move/from16 v7, v24

    move-wide/from16 v1, v27

    :goto_4
    move-wide/from16 v5, v29

    move-object/from16 v11, v32

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    :goto_5
    move-object/from16 v24, v0

    goto/16 :goto_7

    :cond_4
    move-wide/from16 v29, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v9

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    const-string v3, "SegmentTemplate"

    .line 717
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 719
    invoke-virtual {v15, v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseAvailabilityTimeOffsetUs(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v27

    .line 720
    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p14

    move-wide/from16 v4, p16

    move-wide/from16 v6, p18

    move-wide/from16 v8, v29

    move-wide/from16 v10, v27

    move-object v15, v13

    move-wide/from16 v12, p24

    .line 721
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v15, v13

    const-string v3, "ContentProtection"

    .line 730
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 731
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    .line 732
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 733
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v4

    check-cast v25, Ljava/lang/String;

    .line 735
    :cond_6
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 736
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move/from16 v7, v24

    goto :goto_4

    :cond_8
    const-string v3, "InbandEventStream"

    .line 738
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 739
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v3

    move-object/from16 v13, v33

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v32

    move-object/from16 v12, v34

    goto :goto_6

    :cond_9
    move-object/from16 v13, v33

    const-string v3, "EssentialProperty"

    .line 740
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 741
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v3

    move-object/from16 v12, v34

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v32

    goto :goto_6

    :cond_a
    move-object/from16 v12, v34

    const-string v3, "SupplementalProperty"

    .line 742
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 743
    invoke-static {v14, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    move-result-object v3

    move-object/from16 v11, v32

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-object/from16 v11, v32

    .line 745
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    move/from16 v7, v24

    move-wide/from16 v5, v29

    goto/16 :goto_5

    :goto_7
    const-string v0, "Representation"

    .line 747
    invoke-static {v14, v0}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move v6, v7

    move/from16 v7, v23

    move/from16 v8, v17

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v27, v11

    move-object/from16 v11, p12

    move-object/from16 v28, v12

    move-object/from16 v12, v19

    move-object/from16 v29, v13

    move-object/from16 v13, v28

    move-object/from16 v14, v27

    .line 750
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    if-eqz v24, :cond_c

    goto :goto_8

    .line 765
    :cond_c
    new-instance v1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>()V

    move-object/from16 v24, v1

    .line 767
    :goto_8
    new-instance v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;

    .line 769
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v31, p2

    :goto_9
    const-wide/16 v2, -0x1

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v31

    move-object/from16 p4, v24

    move-object/from16 p5, v25

    move-object/from16 p6, v15

    move-object/from16 p7, v29

    move-object/from16 p8, v28

    move-object/from16 p9, v27

    move-wide/from16 p10, v2

    invoke-direct/range {p1 .. p11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;J)V

    return-object v1

    :cond_e
    move-object/from16 v10, p14

    move-object v9, v11

    move-object v11, v13

    move-object v13, v15

    move-object/from16 v0, v24

    move-object/from16 v15, p0

    move/from16 v24, v7

    move-object/from16 v7, v31

    goto/16 :goto_0
.end method

.method protected parseRoleFlagsFromAccessibilityDescriptors(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1531
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1532
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1533
    iget-object v3, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1534
    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v2

    :goto_1
    or-int/2addr v1, v2

    goto :goto_2

    .line 1535
    :cond_0
    iget-object v3, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v4, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1537
    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseTvaAudioPurposeCsValue(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1560
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "supplementary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "commentary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "caption"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "sign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "main"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "dub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "forced-subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "alternate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "forced_subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string/jumbo v2, "subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    const/16 p1, 0x20

    return p1

    :pswitch_2
    return v3

    :pswitch_3
    const/16 p1, 0x40

    return p1

    :pswitch_4
    const/16 p1, 0x100

    return p1

    :pswitch_5
    return v6

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    return v5

    :pswitch_8
    const/16 p1, 0x800

    return p1

    :pswitch_9
    const/16 p1, 0x200

    return p1

    :pswitch_a
    const/16 p1, 0x80

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseRoleFlagsFromProperties(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1546
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1547
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1548
    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/trickmode"

    invoke-static {v3, v2}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x4000

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected parseRoleFlagsFromRoleDescriptors(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1519
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1520
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1521
    iget-object v3, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1522
    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRoleFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 876
    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string/jumbo v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 879
    iget-wide v6, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 878
    invoke-static {v0, v8, v6, v7}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 881
    iget-wide v6, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 882
    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 883
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 885
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 886
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 887
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 890
    iget-object v8, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    .line 892
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 893
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 894
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    .line 896
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 898
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v7, p0

    .line 900
    invoke-virtual/range {v7 .. v16}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildSingleSegmentBase(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_0

    .line 924
    iget-wide v2, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string/jumbo v4, "timescale"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_1

    .line 927
    iget-wide v2, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 926
    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v7, :cond_2

    .line 928
    iget-wide v2, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->duration:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    if-eqz v7, :cond_3

    .line 929
    iget-wide v0, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->startNumber:J

    :cond_3
    const-string/jumbo v2, "startNumber"

    invoke-static {v6, v2, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    .line 931
    invoke-static/range {p7 .. p10}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v17

    const/4 v0, 0x0

    move-object v12, v0

    move-object/from16 v19, v12

    .line 939
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 940
    invoke-static {v6, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 941
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_3

    :cond_5
    const-string v1, "SegmentTimeline"

    .line 942
    invoke-static {v6, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide/from16 v4, p5

    .line 943
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v1, "SegmentURL"

    .line 944
    invoke-static {v6, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v12, :cond_7

    .line 946
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 948
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 950
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v1, "SegmentList"

    .line 952
    invoke-static {v6, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v7, :cond_c

    if-eqz v19, :cond_9

    goto :goto_4

    .line 955
    :cond_9
    iget-object v1, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-object/from16 v19, v1

    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    .line 956
    :cond_a
    iget-object v0, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    :goto_5
    if-eqz v12, :cond_b

    goto :goto_6

    .line 957
    :cond_b
    iget-object v12, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    :cond_c
    :goto_6
    move-object v1, v12

    move-object/from16 v6, v19

    move-object/from16 v5, p0

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v15

    move-object v15, v0

    move-wide/from16 v16, v17

    move-object/from16 v18, v1

    move-wide/from16 v19, p11

    move-wide/from16 v21, p3

    .line 960
    invoke-virtual/range {v5 .. v22}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildSegmentList(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    return-object v0
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;Ljava/util/List;JJJJJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;JJJJJ)",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_0

    .line 1007
    iget-wide v2, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string/jumbo v4, "timescale"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_1

    .line 1010
    iget-wide v2, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 1009
    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v7, :cond_2

    .line 1011
    iget-wide v2, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    invoke-static {v6, v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v7, :cond_3

    .line 1012
    iget-wide v0, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    :cond_3
    const-string/jumbo v2, "startNumber"

    invoke-static {v6, v2, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 1014
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLastSegmentNumberSupplementalProperty(Ljava/util/List;)J

    move-result-wide v18

    .line 1016
    invoke-static/range {p8 .. p11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->getFinalAvailabilityTimeOffset(JJ)J

    move-result-wide v20

    const/4 v0, 0x0

    if-eqz v7, :cond_4

    .line 1020
    iget-object v1, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    const-string v2, "media"

    invoke-virtual {v15, v6, v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;

    move-result-object v22

    if-eqz v7, :cond_5

    .line 1023
    iget-object v1, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    const-string v2, "initialization"

    .line 1022
    invoke-virtual {v15, v6, v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;

    move-result-object v23

    move-object v14, v0

    .line 1029
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 1030
    invoke-static {v6, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1031
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object v14, v1

    goto :goto_6

    :cond_6
    const-string v1, "SegmentTimeline"

    .line 1032
    invoke-static {v6, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide/from16 v4, p6

    .line 1033
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    .line 1035
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    const-string v1, "SegmentTemplate"

    .line 1037
    invoke-static {v6, v1}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v7, :cond_a

    if-eqz v14, :cond_8

    goto :goto_7

    .line 1040
    :cond_8
    iget-object v14, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    :goto_7
    if-eqz v0, :cond_9

    goto :goto_8

    .line 1041
    :cond_9
    iget-object v0, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    :cond_a
    :goto_8
    move-object v1, v14

    move-object v14, v0

    move-object/from16 v0, p0

    move-wide v2, v8

    move-wide v4, v10

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    move-wide v10, v12

    move-object v12, v14

    move-wide/from16 v13, v20

    move-object/from16 v15, v23

    move-object/from16 v16, v22

    move-wide/from16 v17, p12

    move-wide/from16 v19, p4

    .line 1044
    invoke-virtual/range {v0 .. v20}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildSegmentTemplate(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;JJ)Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0

    :cond_b
    move-object/from16 v15, p0

    goto :goto_5
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1243
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v12

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1249
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "S"

    .line 1250
    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "t"

    .line 1251
    invoke-static {v0, v2, v12, v13}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    if-eqz v1, :cond_1

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v8, v14

    .line 1254
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    move-result-wide v3

    :cond_1
    cmp-long v1, v14, v12

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v14, v3

    :goto_0
    const-string v1, "d"

    .line 1264
    invoke-static {v0, v1, v12, v13}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "r"

    .line 1265
    invoke-static {v0, v3, v11}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-wide v5, v1

    move v7, v3

    move-wide v3, v14

    const/4 v1, 0x1

    goto :goto_1

    .line 1268
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->maybeSkipTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const-string v2, "SegmentTimeline"

    .line 1270
    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    const-wide/16 v18, 0x3e8

    move-wide/from16 v14, p4

    move-wide/from16 v16, p2

    .line 1272
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move-wide v7, v8

    .line 1273
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->addSegmentTimelineElementsToList(Ljava/util/List;JJIJ)J

    :cond_4
    return-object v10
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    .line 1330
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method protected parseSelectionFlagsFromDashRoleScheme(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1505
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "forced_subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "forced-subtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method protected parseSelectionFlagsFromRoleDescriptors(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1492
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1493
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;

    .line 1494
    iget-object v3, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v4, "urn:mpeg:dash:role:2011"

    invoke-static {v4, v3}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1495
    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseSelectionFlagsFromDashRoleScheme(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected parseServiceDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const v1, -0x800001

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v2

    move-wide v6, v4

    move-wide v8, v6

    const v10, -0x800001

    const v11, -0x800001

    .line 276
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v12, "Latency"

    .line 277
    invoke-static {v0, v12}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    const-string v13, "max"

    const-string v14, "min"

    if-eqz v12, :cond_0

    const-string/jumbo v4, "target"

    .line 278
    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 279
    invoke-static {v0, v14, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 280
    invoke-static {v0, v13, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    goto :goto_1

    :cond_0
    const-string v12, "PlaybackRate"

    .line 281
    invoke-static {v0, v12}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 282
    invoke-static {v0, v14, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v10

    .line 283
    invoke-static {v0, v13, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->parseFloat(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;F)F

    move-result v11

    :cond_1
    :goto_1
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    move/from16 v19, v10

    move/from16 v20, v11

    const-string v4, "ServiceDescription"

    .line 285
    invoke-static {v0, v4}, Lcom/google/android/exoplr2avp/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;-><init>(JJJFF)V

    return-object v0

    :cond_2
    move-wide v4, v13

    move-wide v6, v15

    move-wide/from16 v8, v17

    move/from16 v10, v19

    move/from16 v11, v20

    goto :goto_0
.end method

.method protected parseTvaAudioPurposeCsValue(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1595
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v2, "6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_2
    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_3
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_6
    return v4

    :pswitch_7
    const/16 p1, 0x8

    return p1

    :pswitch_8
    return v3

    :pswitch_9
    const/16 p1, 0x800

    return p1

    :pswitch_a
    const/16 p1, 0x200

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;
    .locals 1

    const/4 v0, 0x0

    .line 1318
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1320
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/UrlTemplate;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 259
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 260
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;

    move-result-object p1

    return-object p1
.end method
