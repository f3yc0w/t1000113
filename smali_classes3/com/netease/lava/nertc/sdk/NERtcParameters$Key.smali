.class public Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;
.super Ljava/lang/Object;
.source "NERtcParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/NERtcParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/NERtcParameters$Key$SpecializedKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55220459a7c0d4eeL


# instance fields
.field private final mKey:Lcom/netease/lava/nertc/impl/RtcKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/lava/nertc/impl/RtcKey<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mRuntime:Z

.field private final mWritable:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "name",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/netease/lava/nertc/impl/RtcKey;

    invoke-direct {v0, p1, p2}, Lcom/netease/lava/nertc/impl/RtcKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mKey:Lcom/netease/lava/nertc/impl/RtcKey;

    .line 55
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/RtcParameters;->writeSupported(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mWritable:Z

    .line 56
    invoke-static {p1}, Lcom/netease/lava/nertc/impl/RtcParameters;->runtimeSupported(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mRuntime:Z

    return-void
.end method

.method public static createSpecializedKey(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/lava/nertc/sdk/NERtcParameters$Key<",
            "*>;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/netease/lava/nertc/impl/RtcParameters;->getKeyType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    const-class v0, Ljava/lang/Object;

    .line 88
    :cond_0
    new-instance v1, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key$SpecializedKey;

    invoke-direct {v1, p0, v0}, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key$SpecializedKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 172
    instance-of v0, p1, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;

    iget-object p1, p1, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mKey:Lcom/netease/lava/nertc/impl/RtcKey;

    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mKey:Lcom/netease/lava/nertc/impl/RtcKey;

    invoke-virtual {p1, v0}, Lcom/netease/lava/nertc/impl/RtcKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mKey:Lcom/netease/lava/nertc/impl/RtcKey;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/RtcKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mKey:Lcom/netease/lava/nertc/impl/RtcKey;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/RtcKey;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runtime()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mRuntime:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->type()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->writable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->runtime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Key(Name:%s, Type:%s, Writable:%s, Runtime:%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mKey:Lcom/netease/lava/nertc/impl/RtcKey;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/RtcKey;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public writable()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/netease/lava/nertc/sdk/NERtcParameters$Key;->mWritable:Z

    return v0
.end method
