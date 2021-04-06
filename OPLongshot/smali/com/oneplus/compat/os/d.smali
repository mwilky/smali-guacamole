.class public Lcom/oneplus/compat/os/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/os/UserHandle;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x2

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/oneplus/compat/os/d;->b:I

    sget-object v0, Lcom/oneplus/inner/os/UserHandleWrapper;->SYSTEM:Landroid/os/UserHandle;

    sget-object v0, Lcom/oneplus/inner/os/UserHandleWrapper;->PARALLEL:Landroid/os/UserHandle;

    sget-object v0, Lcom/oneplus/inner/os/UserHandleWrapper;->ALL:Landroid/os/UserHandle;

    sget-object v0, Lcom/oneplus/inner/os/UserHandleWrapper;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    sput v1, Lcom/oneplus/compat/os/d;->b:I

    const-class v0, Landroid/os/UserHandle;

    const-class v1, Landroid/os/UserHandle;

    const-string v2, "OWNER"

    invoke-static {v0, v2, v1}, Lb/b/e/b/b;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/b/e/b/b;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    const-class v0, Landroid/os/UserHandle;

    const-class v2, Landroid/os/UserHandle;

    const-string v3, "PARALLEL"

    invoke-static {v0, v3, v2}, Lb/b/e/b/b;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v1}, Lb/b/e/b/b;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    const-class v0, Landroid/os/UserHandle;

    const-class v2, Landroid/os/UserHandle;

    const-string v3, "ALL"

    invoke-static {v0, v3, v2}, Lb/b/e/b/b;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v1}, Lb/b/e/b/b;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    const-class v0, Landroid/os/UserHandle;

    const-class v2, Landroid/os/UserHandle;

    const-string v3, "CURRENT"

    invoke-static {v0, v3, v2}, Lb/b/e/b/b;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, v1}, Lb/b/e/b/b;->c(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_0
    sput-object v0, Lcom/oneplus/compat/os/d;->a:Landroid/os/UserHandle;

    return-void
.end method

.method public static a()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/inner/os/UserHandleWrapper;->myUserId()I

    move-result v0

    return v0

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
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "myUserId"

    invoke-static {v0, v1}, Lb/b/e/b/c;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/b/e/b/c;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
