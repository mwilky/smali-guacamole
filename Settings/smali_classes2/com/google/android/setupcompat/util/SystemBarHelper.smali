.class public final Lcom/google/android/setupcompat/util/SystemBarHelper;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;,
        Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;
    }
.end annotation


# direct methods
.method private static getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;)V
    .locals 2

    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;-><init>(Lcom/google/android/setupcompat/util/SystemBarHelper$1;)V

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;I)V

    return-void
.end method

.method public static removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V
    .locals 1

    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$2;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/util/SystemBarHelper$2;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static removeVisibilityFlag(Landroid/view/Window;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static showSystemBars(Landroid/view/Window;Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1602

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/Window;I)V

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x1010451
        0x1010452
    .end array-data
.end method
