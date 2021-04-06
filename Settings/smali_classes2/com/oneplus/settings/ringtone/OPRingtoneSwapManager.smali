.class public Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;
.super Ljava/lang/Object;
.source "OPRingtoneSwapManager.java"


# static fields
.field private static sInstance:Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

.field private mRingTones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ringtone/RingtoneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;

    invoke-direct {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;-><init>()V

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->sInstance:Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUSKU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->initRingtoneData()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    :goto_0
    return-void
.end method

.method private static getCarrier()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.boot.opcarrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCarrierType()I
    .locals 4

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getCarrier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "C427"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", carrier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPRingtoneSwapManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getDefaultRingtoneName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "T-Mobile"

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    const-string p0, "Metro by T-Mobile"

    goto :goto_0

    :cond_1
    const-string p0, "OnePlus tune"

    :goto_0
    return-object p0
.end method

.method private getDefaultRingtoneUris()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ringtone/RingtoneInfo;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/RingtoneInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/RingtoneInfo;->getRingtoneUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultRingtoneUris default ringtone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPRingtoneSwapManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHideRingTones()[Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getCarrierType()I

    move-result v0

    const-string v1, "Metro by T-Mobile"

    const-string v2, "OnePlus tune"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    const-string v5, "T-Mobile"

    if-ne v0, v4, :cond_1

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHideRingTones ringtone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPRingtoneSwapManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->sInstance:Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;

    return-object v0
.end method

.method private getRingtoneUri(I)Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/RingtoneInfo;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/RingtoneInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/RingtoneInfo;->getRingtoneUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initRingtoneData()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Lcom/oneplus/settings/ringtone/RingtoneInfo;

    invoke-direct {v3, v1, v2}, Lcom/oneplus/settings/ringtone/RingtoneInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRingtoneData ringtone list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mRingTones:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPRingtoneSwapManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public changeDefaultRingtone()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mManager:Lcom/oneplus/settings/ringtone/OPRingtoneManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getCarrierType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDefaultRingtone uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPRingtoneSwapManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public isNeedChangeRingtone()Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_ringtone_df"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "OPRingtoneSwapManager"

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedChangeRingtone defaultRingtone = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getCarrierType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "isNeedChangeRingtone false, already default ringtone"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneSwapManager;->getDefaultRingtoneUris()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p0, "isNeedChangeRingtone true"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "isNeedChangeRingtone false"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
