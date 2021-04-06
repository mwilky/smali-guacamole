.class public Lb/b/b/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/b/b/b$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/oneplus/inner/config/ConfigObserverWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lb/b/b/b/b$c;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lb/b/b/b/b$a;

    invoke-direct {v0, p0, p3}, Lb/b/b/b/b$a;-><init>(Lb/b/b/b/b;Lb/b/b/b/b$c;)V

    new-instance p3, Lcom/oneplus/inner/config/ConfigObserverWrapper;

    invoke-direct {p3, p1, p2, v0, p4}, Lcom/oneplus/inner/config/ConfigObserverWrapper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/inner/config/ConfigObserverWrapper$ConfigUpdaterWrapper;Ljava/lang/String;)V

    iput-object p3, p0, Lb/b/b/b/b;->c:Lcom/oneplus/inner/config/ConfigObserverWrapper;

    goto :goto_1

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
    new-instance p1, Lb/b/b/e/a;

    const-string p2, "not Supported"

    invoke-direct {p1, p2}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    :try_start_0
    const-string v0, "com.oneplus.config.ConfigObserver"

    invoke-static {v0}, Lb/b/e/b/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lb/b/b/b/b;->b:Ljava/lang/Class;

    const-string v1, "ConfigUpdater"

    invoke-static {v0, v1}, Lb/b/e/b/a;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lb/b/b/b/b;->b:Ljava/lang/Class;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Handler;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v7, v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-instance v3, Lb/b/b/b/b$b;

    invoke-direct {v3, p0, p3}, Lb/b/b/b/b$b;-><init>(Lb/b/b/b/b;Lb/b/b/b/b$c;)V

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v5

    aput-object p2, p3, v6

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Class;

    aput-object v0, p2, v5

    invoke-static {p1, p2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p3, v4

    aput-object p4, p3, v8

    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lb/b/b/b/b;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lb/b/b/e/a;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/b/b/b;->c:Lcom/oneplus/inner/config/ConfigObserverWrapper;

    invoke-virtual {v0}, Lcom/oneplus/inner/config/ConfigObserverWrapper;->register()V

    goto :goto_1

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
    iget-object v0, p0, Lb/b/b/b/b;->b:Ljava/lang/Class;

    const-string v1, "register"

    invoke-static {v0, v1}, Lb/b/e/b/c;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lb/b/b/b/b;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lb/b/e/b/c;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
