.class public Lb/b/b/k/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/inner/util/OpFeaturesWrapper;->isSupport(Ljava/lang/String;)Z

    move-result p0

    return p0

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

    const-string v0, "not Supported"

    invoke-direct {p0, v0}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const-string v0, "android.util.OpFeatures"

    invoke-static {v0}, Lb/b/e/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0, v1}, Lb/b/e/b/b;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lb/b/e/b/b;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [I

    aput-object v5, v4, v1

    const-string v5, "isSupport"

    invoke-static {v0, v5, v4}, Lb/b/e/b/c;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [I

    aput p0, v3, v1

    aput-object v3, v4, v1

    invoke-static {v0, v2, v4}, Lb/b/e/b/c;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method
