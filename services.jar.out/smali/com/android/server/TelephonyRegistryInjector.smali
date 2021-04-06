.class public Lcom/android/server/TelephonyRegistryInjector;
.super Ljava/lang/Object;
.source "TelephonyRegistryInjector.java"


# static fields
.field private static final ACTION_ONLINE_CONFIG_CHANGED:Ljava/lang/String; = "com.oem.intent.action.ONLINE_CONFIG_TELEPHONY_CHANGED"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistryInjector"

.field public static final VDBG:Z

.field private static mGeneralGetter:Ljava/lang/reflect/Method;

.field private static mTelephony:Ljava/lang/Object;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultRegLimits:I

.field private mPackageRegLimits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/TelephonyRegistryInjector;->DEBUG:Z

    nop

    const-string/jumbo v0, "persist.sys.debug.telephony_register_injector"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/TelephonyRegistryInjector;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistryInjector;->mPackageRegLimits:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/TelephonyRegistryInjector$1;

    invoke-direct {v0, p0}, Lcom/android/server/TelephonyRegistryInjector$1;-><init>(Lcom/android/server/TelephonyRegistryInjector;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistryInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/TelephonyRegistryInjector;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.ONLINE_CONFIG_TELEPHONY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TelephonyRegistryInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistryInjector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistryInjector;->initRegLimits()V

    const-string v1, "TelephonyRegistryInjector created"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistryInjector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/TelephonyRegistryInjector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistryInjector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistryInjector;->updateRegistrationLimit()V

    return-void
.end method

.method private dumpPackageRegLimits()V
    .locals 4

    sget-boolean v0, Lcom/android/server/TelephonyRegistryInjector;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistryInjector;->mPackageRegLimits:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", regLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistryInjector;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getIExtTelephony()Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string/jumbo v2, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIExtTelephony() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyRegistryInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getMethod()Ljava/lang/reflect/Method;
    .locals 5

    :try_start_0
    const-string/jumbo v0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "generalGetter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMethod() exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyRegistryInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private initRegLimits()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/TelephonyRegistryInjector;->mPackageRegLimits:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistryInjector;->updateRegistrationLimit()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TelephonyRegistryInjector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TelephonyRegistryInjector"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TelephonyRegistryInjector"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseRegistrationLimitOnlineConfig(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistryInjector;->mPackageRegLimits:Ljava/util/HashMap;

    aget-object v7, v5, v2

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistryInjector;->dumpPackageRegLimits()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseRegistrationLimitOnlineConfig: ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistryInjector;->loge(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private updateRegistrationLimit()V
    .locals 7

    const-string v0, "getOnlineConfigValue"

    :try_start_0
    sget-object v1, Lcom/android/server/TelephonyRegistryInjector;->mGeneralGetter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/TelephonyRegistryInjector;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/TelephonyRegistryInjector;->mGeneralGetter:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v1, Lcom/android/server/TelephonyRegistryInjector;->mTelephony:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/TelephonyRegistryInjector;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/server/TelephonyRegistryInjector;->mTelephony:Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/android/server/TelephonyRegistryInjector;->mGeneralGetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/TelephonyRegistryInjector;->mTelephony:Ljava/lang/Object;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/TelephonyRegistryInjector;->mGeneralGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "feature"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "config"

    const-string/jumbo v5, "packageRegLimits"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dataType"

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "defaultValue"

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/TelephonyRegistryInjector;->mGeneralGetter:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/TelephonyRegistryInjector;->mTelephony:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    aput-object v1, v4, v2

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRegistrationLimit: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistryInjector;->log(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistryInjector;->parseRegistrationLimitOnlineConfig(Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    const-string v0, "TelephonyRegistryInjector"

    const-string/jumbo v1, "updateRegistrationLimit: Got telephony method failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRegistrationLimit: ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistryInjector;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getRegistrationLimit(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistryInjector;->mPackageRegLimits:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/TelephonyRegistryInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regLimit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistryInjector;->mPackageRegLimits:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistryInjector;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistryInjector;->mPackageRegLimits:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    return p2
.end method
