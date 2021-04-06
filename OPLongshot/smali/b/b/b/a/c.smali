.class public Lb/b/b/a/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/oneplus/inner/app/PendingIntentWrapper;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

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
    new-instance p0, Lb/b/b/e/a;

    const-string p1, "not Supported"

    invoke-direct {p0, p1}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const-class v0, Landroid/app/PendingIntent;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const-class v3, Landroid/os/Bundle;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-class v3, Landroid/os/UserHandle;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v3, "getActivityAsUser"

    invoke-static {v0, v3, v2}, Lb/b/e/b/c;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    aput-object p2, v1, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    aput-object p4, v1, v8

    aput-object p5, v1, v9

    invoke-static {v0, v2, v1}, Lb/b/e/b/c;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0
.end method
