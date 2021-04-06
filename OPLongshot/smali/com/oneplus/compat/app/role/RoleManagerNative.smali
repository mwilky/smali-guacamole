.class public Lcom/oneplus/compat/app/role/RoleManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoleHolderAsUser(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 10
    .param p0    # Landroid/app/role/RoleManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/role/RoleManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p6}, Lcom/oneplus/inner/app/role/RoleManagerWrapper;->addRoleHolderAsUser(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Landroid/app/role/RoleManager;

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-class v0, Landroid/os/UserHandle;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    const-class v0, Ljava/util/concurrent/Executor;

    const/4 v8, 0x4

    aput-object v0, v3, v8

    const-class v0, Ljava/util/function/Consumer;

    const/4 v9, 0x5

    aput-object v0, v3, v9

    const-string v0, "addRoleHolderAsUser"

    invoke-static {v1, v0, v3}, Lb/b/e/b/c;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p4, v1, v7

    aput-object p5, v1, v8

    aput-object p6, v1, v9

    move-object v2, p0

    invoke-static {v0, p0, v1}, Lb/b/e/b/c;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lb/b/b/e/a;

    const-string v1, "not Supported"

    invoke-direct {v0, v1}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeRoleHolderAsUser(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 10
    .param p0    # Landroid/app/role/RoleManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/role/RoleManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p6}, Lcom/oneplus/inner/app/role/RoleManagerWrapper;->removeRoleHolderAsUser(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Landroid/app/role/RoleManager;

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-class v0, Landroid/os/UserHandle;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    const-class v0, Ljava/util/concurrent/Executor;

    const/4 v8, 0x4

    aput-object v0, v3, v8

    const-class v0, Ljava/util/function/Consumer;

    const/4 v9, 0x5

    aput-object v0, v3, v9

    const-string v0, "removeRoleHolderAsUser"

    invoke-static {v1, v0, v3}, Lb/b/e/b/c;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p4, v1, v7

    aput-object p5, v1, v8

    aput-object p6, v1, v9

    move-object v2, p0

    invoke-static {v0, p0, v1}, Lb/b/e/b/c;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lb/b/b/e/a;

    const-string v1, "not Supported"

    invoke-direct {v0, v1}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
