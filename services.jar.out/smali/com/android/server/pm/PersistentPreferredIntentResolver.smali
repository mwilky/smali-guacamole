.class public Lcom/android/server/pm/PersistentPreferredIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PersistentPreferredIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIntentFilter(Lcom/android/server/pm/PersistentPreferredActivity;)Landroid/content/IntentFilter;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    check-cast p1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->getIntentFilter(Lcom/android/server/pm/PersistentPreferredActivity;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z
    .locals 1

    iget-object v0, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;
    .locals 1

    new-array v0, p1, [Lcom/android/server/pm/PersistentPreferredActivity;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p1

    return-object p1
.end method
