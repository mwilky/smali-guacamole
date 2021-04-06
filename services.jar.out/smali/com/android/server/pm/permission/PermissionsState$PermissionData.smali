.class final Lcom/android/server/pm/permission/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPerm:Lcom/android/server/pm/permission/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/BasePermission;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-direct {v6, v4}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCompatibleUserId(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isInstallPermission()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isInstallPermissionKey(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grant(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->access$100()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefault()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isGranted(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_1
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public revoke(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-static {v1, v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->access$100()V

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateFlags(III)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    and-int v1, p3, p2

    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->access$100()V

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v5

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v6

    not-int v7, p2

    and-int/2addr v6, v7

    or-int/2addr v6, v1

    invoke-static {v3, v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$202(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v6

    if-eq v6, v5, :cond_3

    move v2, v4

    :cond_3
    monitor-exit v0

    return v2

    :cond_4
    if-eqz v1, :cond_5

    new-instance v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$202(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return v4

    :cond_5
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
