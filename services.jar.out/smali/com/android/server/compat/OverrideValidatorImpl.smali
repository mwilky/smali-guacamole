.class public Lcom/android/server/compat/OverrideValidatorImpl;
.super Lcom/android/internal/compat/IOverrideValidator$Stub;
.source "OverrideValidatorImpl.java"


# instance fields
.field private mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field private mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/compat/IOverrideValidator$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    iput-object p2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-void
.end method


# virtual methods
.method public getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 11

    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isLoggingOnly(J)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isDebuggableBuild()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v2}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/compat/CompatConfig;->minTargetSdkForChangeId(J)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/compat/CompatConfig;->isDisabled(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v6, v5, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v6

    :cond_1
    iget-object v6, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_7

    :try_start_0
    invoke-virtual {v6, p3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-nez v9, :cond_2

    new-instance v5, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v9, 0x1

    invoke-direct {v5, v9, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v5

    :cond_2
    if-nez v2, :cond_3

    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v1, v5, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    :cond_3
    if-ne v3, v1, :cond_4

    if-nez v4, :cond_4

    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v1, v10, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    :cond_4
    if-nez v4, :cond_6

    if-gt v8, v3, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v5, 0x3

    invoke-direct {v1, v5, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    :cond_6
    :goto_0
    new-instance v1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {v1, v5, v8, v3}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v1

    :catch_0
    move-exception v5

    new-instance v7, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object v7

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "No PackageManager!"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
