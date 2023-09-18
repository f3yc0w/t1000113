.class public Lcn/thinkingdata/android/persistence/StorageFlushInterval;
.super Lcn/thinkingdata/android/persistence/SharedPreferencesStorage;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/thinkingdata/android/persistence/SharedPreferencesStorage<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultFlushInterval:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "flushInterval"

    invoke-direct {p0, p1, v0}, Lcn/thinkingdata/android/persistence/SharedPreferencesStorage;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    iput p2, p0, Lcn/thinkingdata/android/persistence/StorageFlushInterval;->mDefaultFlushInterval:I

    return-void
.end method


# virtual methods
.method load(Landroid/content/SharedPreferences;)V
    .locals 2

    iget-object v0, p0, Lcn/thinkingdata/android/persistence/SharedPreferencesStorage;->storageKey:Ljava/lang/String;

    iget v1, p0, Lcn/thinkingdata/android/persistence/StorageFlushInterval;->mDefaultFlushInterval:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/persistence/SharedPreferencesStorage;->data:Ljava/lang/Object;

    return-void
.end method

.method save(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/persistence/SharedPreferencesStorage;->storageKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method bridge synthetic save(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcn/thinkingdata/android/persistence/StorageFlushInterval;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V

    return-void
.end method
