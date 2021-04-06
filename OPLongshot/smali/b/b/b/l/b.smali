.class public Lb/b/b/l/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/inner/view/IWindowManagerWrapper;->dismissKeyguard()V

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lb/b/b/e/a;

    const-string v1, "not Supported"

    invoke-direct {v0, v1}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Lb/b/e/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    invoke-static {v0, v1}, Lb/b/e/b/c;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/b/e/b/c;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "android.view.IWindowManager"

    invoke-static {v3}, Lb/b/e/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.android.internal.policy.IKeyguardDismissCallback"

    invoke-static {v4}, Lb/b/e/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "dismissKeyguard"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v2, :cond_4

    new-array v2, v7, [Ljava/lang/Class;

    aput-object v4, v2, v8

    invoke-static {v3, v6, v2}, Lb/b/e/b/c;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lb/b/e/b/c;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v4, v5, v8

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v5, v7

    invoke-static {v3, v6, v5}, Lb/b/e/b/c;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v8

    aput-object v1, v2, v7

    invoke-static {v3, v0, v2}, Lb/b/e/b/c;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method
