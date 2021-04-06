.class Lcom/google/android/material/internal/NavigationMenuPresenter$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/internal/NavigationMenuPresenter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroidx/appcompat/view/menu/MenuItemImpl;

.field b:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->a:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->a:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method
