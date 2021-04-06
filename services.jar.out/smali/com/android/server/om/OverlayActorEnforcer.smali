.class public Lcom/android/server/om/OverlayActorEnforcer;
.super Ljava/lang/Object;
.source "OverlayActorEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    }
.end annotation


# static fields
.field private static final DEBUG_REASON:Z = false


# instance fields
.field private final mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayableInfoCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    return-void
.end method

.method static getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/OverlayActorEnforcer$ActorState;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "overlay"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_2

    sget-object v6, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_3
    sget-object v4, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_4
    :goto_0
    sget-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    if-eqz v4, :cond_b

    const/16 v0, 0x3e8

    if-eq v4, v0, :cond_b

    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v0, v4}, Lcom/android/server/om/OverlayableInfoCallback;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_0
    iget-object v7, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_1
    iget-object v8, v3, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v9, "android.permission.CHANGE_OVERLAY_PACKAGES"

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v0, v7, v5}, Lcom/android/server/om/OverlayableInfoCallback;->doesTargetDefineOverlayable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v0, v9, v2}, Lcom/android/server/om/OverlayableInfoCallback;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v9

    :catch_1
    move-exception v0

    sget-object v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v9

    :cond_3
    :try_start_3
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v0, v7, v8, v5}, Lcom/android/server/om/OverlayableInfoCallback;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v0

    nop

    if-nez v10, :cond_4

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_4
    iget-object v11, v10, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_4
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v0, v9, v2}, Lcom/android/server/om/OverlayableInfoCallback;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    sget-object v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v9

    :cond_5
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v0}, Lcom/android/server/om/OverlayableInfoCallback;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v9

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    sget-object v13, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-eq v12, v13, :cond_6

    return-object v12

    :cond_6
    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/om/OverlayActorEnforcer;->mOverlayableCallback:Lcom/android/server/om/OverlayableInfoCallback;

    invoke-interface {v14, v13, v5}, Lcom/android/server/om/OverlayableInfoCallback;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    if-nez v14, :cond_7

    sget-object v15, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_APP_INFO:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v15

    :cond_7
    iget-object v15, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v15, :cond_8

    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_APP_INFO:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :cond_8
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v16

    if-nez v16, :cond_9

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v16

    if-nez v16, :cond_9

    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :cond_9
    invoke-static {v6, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :cond_a
    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :catch_3
    move-exception v0

    sget-object v9, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v9

    :cond_b
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0
.end method


# virtual methods
.method enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/om/OverlayActorEnforcer;->isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
