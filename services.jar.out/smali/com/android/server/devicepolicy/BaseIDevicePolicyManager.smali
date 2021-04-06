.class abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canProfileOwnerResetPasswordWhenLocked(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 0

    return-void
.end method

.method public getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract handleStartUser(I)V
.end method

.method abstract handleStopUser(I)V
.end method

.method abstract handleUnlockUser(I)V
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLocationEnabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .locals 0

    return-void
.end method

.method public setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method abstract systemReady(I)V
.end method
