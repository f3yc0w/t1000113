.class public Lcom/tendcloud/tenddata/game/an;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final e:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field private final f:Lcom/tendcloud/tenddata/game/ay$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/tendcloud/tenddata/game/ap;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/an;->e:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const-string v0, "/"

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/tendcloud/tenddata/game/an;->d:I

    .line 51
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/an;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ay$a;->get(I)Lcom/tendcloud/tenddata/game/ay$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/an;->f:Lcom/tendcloud/tenddata/game/ay$a;

    .line 53
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/an;->d()Lcom/tendcloud/tenddata/game/ay$d;

    move-result-object v1

    if-eqz p1, :cond_3

    :try_start_0
    const-string v2, "cpuacct"

    .line 56
    invoke-virtual {p1, v2}, Lcom/tendcloud/tenddata/game/ay$a;->getGroup(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/ay$b;

    move-result-object v2

    const-string v3, "cpu"

    .line 57
    invoke-virtual {p1, v3}, Lcom/tendcloud/tenddata/game/ay$a;->getGroup(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/ay$b;

    move-result-object p1

    .line 58
    iget-object v3, p1, Lcom/tendcloud/tenddata/game/ay$b;->group:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 59
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/ay$b;->group:Ljava/lang/String;

    const-string v3, "bg_non_interactive"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tendcloud/tenddata/game/an;->a:Z

    .line 60
    iget-object p1, v2, Lcom/tendcloud/tenddata/game/ay$b;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-le p1, v3, :cond_1

    .line 61
    iget-object p1, v2, Lcom/tendcloud/tenddata/game/ay$b;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    const-string v0, "uid_"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/an;->b:I

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ay$d;->getUid()I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/an;->b:I

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ay$d;->getUid()I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/an;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 75
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ay$d;->getUid()I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/an;->b:I

    :cond_3
    :goto_1
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/an;->d:I

    .line 115
    const-class v0, Lcom/tendcloud/tenddata/game/ay$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ay$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/an;->f:Lcom/tendcloud/tenddata/game/ay$a;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tendcloud/tenddata/game/an;->a:Z

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ay;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ay$c;->get(I)Lcom/tendcloud/tenddata/game/ay$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/ay$c;->getComm()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 156
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    const-string v0, ":"

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/an;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public c()Lcom/tendcloud/tenddata/game/ay$a;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/an;->f:Lcom/tendcloud/tenddata/game/ay$a;

    return-object v0
.end method

.method public final d()Lcom/tendcloud/tenddata/game/ay$d;
    .locals 1

    .line 162
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/an;->d:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ay$d;->get(I)Lcom/tendcloud/tenddata/game/ay$d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/tendcloud/tenddata/game/ay$c;
    .locals 1

    .line 170
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/an;->d:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ay$c;->get(I)Lcom/tendcloud/tenddata/game/ay$c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
