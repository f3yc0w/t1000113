.class public Lcn/thinkingdata/android/persistence/StorageIdentifyId;
.super Lcn/thinkingdata/android/persistence/SharedPreferencesStorage;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/thinkingdata/android/persistence/SharedPreferencesStorage<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    const-string v0, "identifyID"

    invoke-direct {p0, p1, v0}, Lcn/thinkingdata/android/persistence/SharedPreferencesStorage;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    return-void
.end method
