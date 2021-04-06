.class Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiState"
.end annotation


# instance fields
.field private mAppearance:I

.field private mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field private mDisabled1:I

.field private mDisabled2:I

.field private mFullscreen:Z

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private mImmersive:Z

.field private mNavbarColorManagedByIme:Z

.field private mShowImeSwitcher:Z

.field private mTransientBarTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    new-array v0, p1, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImmersive:Z

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->appearanceEquals(I[Lcom/android/internal/view/AppearanceRegion;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setAppearance(I[Lcom/android/internal/view/AppearanceRegion;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->showTransient([I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->clearTransient([I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setFullscreen(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImmersive(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImmersive:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result v0

    return v0
.end method

.method private appearanceEquals(I[Lcom/android/internal/view/AppearanceRegion;Z)Z
    .locals 5

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v0, v0

    array-length v2, p2

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    if-eq v0, p3, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v3, v3, v0

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/AppearanceRegion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method private clearTransient([I)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableEquals(II)Z
    .locals 1

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getDisabled1()I
    .locals 1

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return v0
.end method

.method private getDisabled2()I
    .locals 1

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return v0
.end method

.method private setAppearance(I[Lcom/android/internal/view/AppearanceRegion;Z)V
    .locals 0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method private setDisabled(II)V
    .locals 0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return-void
.end method

.method private setFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    return-void
.end method

.method private setImeWindowState(IIZLandroid/os/IBinder;)V
    .locals 0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-void
.end method

.method private setImmersive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImmersive:Z

    return-void
.end method

.method private showTransient([I)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
