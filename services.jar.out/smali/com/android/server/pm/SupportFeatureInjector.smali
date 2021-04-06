.class public Lcom/android/server/pm/SupportFeatureInjector;
.super Ljava/lang/Object;
.source "SupportFeatureInjector.java"


# static fields
.field private static final ONEPLUS_FEATURE_MOBILEPHONE:Ljava/lang/String; = "com.oneplus.mobilephone"

.field private static final ONEPLUS_FEATURE_SLM_SUPPORT:Ljava/lang/String; = "com.oneplus.slm.support"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMobilePhoneFeatureInfo()Landroid/content/pm/FeatureInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    const-string v1, "com.oneplus.mobilephone"

    iput-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    return-object v0
.end method

.method public static isMobilePhoneFeature(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.oneplus.mobilephone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.oneplus.slm.support"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [I

    const/16 v1, 0xbb

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method
