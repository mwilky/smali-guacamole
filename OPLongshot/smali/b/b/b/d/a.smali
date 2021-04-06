.class public Lb/b/b/d/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a()Ljava/lang/Object;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/inner/context/OneplusContextWrapper;->queryInterface()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lb/b/b/e/a;

    const-string v1, "not Supported"

    invoke-direct {v0, v1}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const-string v0, "com.oneplus.android.context.IOneplusContext"

    invoke-static {v0}, Lb/b/e/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "EType"

    invoke-static {v0, v1}, Lb/b/e/b/a;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ONEPLUS_LONGSCREENSHOT"

    invoke-static {v0, v1}, Lb/b/e/b/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lb/b/e/b/b;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "com.oneplus.android.context.OneplusContext"

    invoke-static {v3}, Lb/b/e/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string v0, "queryInterface"

    invoke-static {v3, v0, v5}, Lb/b/e/b/c;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v0, v2, v3}, Lb/b/e/b/c;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
