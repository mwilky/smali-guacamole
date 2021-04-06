.class public Landroidx/appcompat/app/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/SoftKeyBoardListener$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroidx/appcompat/app/SoftKeyBoardListener$b;

.field d:Z

.field private e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->d:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->d:Z

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->b:I

    new-instance v0, Landroidx/appcompat/app/SoftKeyBoardListener$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/SoftKeyBoardListener$a;-><init>(Landroidx/appcompat/app/SoftKeyBoardListener;)V

    iput-object v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/SoftKeyBoardListener;->e(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Landroidx/appcompat/app/SoftKeyBoardListener;)I
    .locals 0

    iget p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->b:I

    return p0
.end method

.method static synthetic c(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroidx/appcompat/app/SoftKeyBoardListener$b;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->c:Landroidx/appcompat/app/SoftKeyBoardListener$b;

    return-object p0
.end method

.method static synthetic d(Landroidx/appcompat/app/SoftKeyBoardListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static f(Landroid/app/Activity;Landroidx/appcompat/app/SoftKeyBoardListener$b;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/app/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p1}, Landroidx/appcompat/app/SoftKeyBoardListener;->g(Landroidx/appcompat/app/SoftKeyBoardListener$b;)V

    return-void
.end method

.method private g(Landroidx/appcompat/app/SoftKeyBoardListener$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/SoftKeyBoardListener;->c:Landroidx/appcompat/app/SoftKeyBoardListener$b;

    return-void
.end method


# virtual methods
.method public e(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p1, Landroidx/lifecycle/e;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/e;

    invoke-interface {p1}, Landroidx/lifecycle/e;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/app/SoftKeyBoardListener$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/SoftKeyBoardListener$2;-><init>(Landroidx/appcompat/app/SoftKeyBoardListener;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/d;)V

    :cond_0
    return-void
.end method
