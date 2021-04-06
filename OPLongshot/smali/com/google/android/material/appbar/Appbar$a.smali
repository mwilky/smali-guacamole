.class public Lcom/google/android/material/appbar/Appbar$a;
.super Landroidx/appcompat/app/ActionBar$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/Appbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$a;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    const p1, 0x800013

    iput p1, p0, Landroidx/appcompat/app/ActionBar$a;->a:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$a;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    iput p3, p0, Landroidx/appcompat/app/ActionBar$a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/Appbar$a;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$a;-><init>(Landroidx/appcompat/app/ActionBar$a;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/Appbar$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$a;-><init>(Landroidx/appcompat/app/ActionBar$a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    iget p1, p1, Lcom/google/android/material/appbar/Appbar$a;->b:I

    iput p1, p0, Lcom/google/android/material/appbar/Appbar$a;->b:I

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
