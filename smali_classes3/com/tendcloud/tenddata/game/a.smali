.class public abstract Lcom/tendcloud/tenddata/game/a;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final ENV:Lcom/tendcloud/tenddata/game/a;

.field private static volatile FeaturesList:Ljava/util/List; = null

.field public static final GAME:Lcom/tendcloud/tenddata/game/a;

.field public static final MF_JSON:Ljava/lang/String; = "UNIFIED_SDK_JSON"

.field public static final MF_STRING:Ljava/lang/String; = "STRING"

.field private static final service:[Lcom/tendcloud/tenddata/game/a;


# instance fields
.field private indexNum:I

.field private nameString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->FeaturesList:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/tendcloud/tenddata/game/b;

    const-string v1, "ENV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    .line 96
    new-instance v1, Lcom/tendcloud/tenddata/game/c;

    const-string v3, "GAME"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lcom/tendcloud/tenddata/game/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    new-array v2, v2, [Lcom/tendcloud/tenddata/game/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 143
    sput-object v2, Lcom/tendcloud/tenddata/game/a;->service:[Lcom/tendcloud/tenddata/game/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/a;->nameString:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/tendcloud/tenddata/game/a;->indexNum:I

    .line 30
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/a;->addFeatures2List(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/a;->nameString:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/tendcloud/tenddata/game/a;->indexNum:I

    return-void
.end method

.method private addFeatures2List(Ljava/lang/String;)V
    .locals 1

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->FeaturesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->FeaturesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static getFeaturesList()Ljava/util/ArrayList;
    .locals 3

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 214
    :goto_0
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/game/a;->FeaturesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    sget-object v2, Lcom/tendcloud/tenddata/game/a;->FeaturesList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/tendcloud/tenddata/game/a;->FeaturesList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static getFeaturesNameList()Ljava/util/List;
    .locals 1

    .line 34
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->FeaturesList:Ljava/util/List;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;
    .locals 2

    .line 157
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 160
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/a;
    .locals 2

    .line 171
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->service:[Lcom/tendcloud/tenddata/game/a;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/a;

    return-object v0
.end method


# virtual methods
.method public abstract getCert()Ljava/lang/String;
.end method

.method public getDataFolder()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "td_database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "SaaS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileLimitType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getIP()Ljava/lang/String;
.end method

.method public abstract getMessageFormat()Ljava/lang/String;
.end method

.method public getRootFolder()Ljava/lang/String;
    .locals 1

    const-string v0, "__database_reborn_January_one__"

    return-object v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public index()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/tendcloud/tenddata/game/a;->indexNum:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/a;->nameString:Ljava/lang/String;

    return-object v0
.end method

.method public needToSendData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
