.class public Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPVibrateControlPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;,
        Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;
    }
.end annotation


# static fields
.field private static final KEY_VIBRATE_TOGGLE:Ljava/lang/String; = "vibrate_toggle"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field protected final mHandler:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;

.field protected mHelper:Lcom/android/settings/notification/AudioHelper;

.field protected mPreference:Landroidx/preference/Preference;

.field protected final mReceiver:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;

.field protected mRingerMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "vibrate_toggle"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "OPVibrateAndSilentControl"

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->TAG:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mRingerMode:I

    new-instance p2, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;-><init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$1;)V

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mReceiver:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;

    new-instance p2, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;

    invoke-direct {p2, p0, v0}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;-><init>(Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$1;)V

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mHandler:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$H;

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "vibrate_toggle"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mReceiver:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p1}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate off, current ringerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPVibrateAndSilentControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "vibrate_when_ringing"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const/16 v0, -0x64

    invoke-virtual {p1, v1, v0, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_3
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mReceiver:Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mRingerMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
