.class public abstract Landroidx/animation/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/animation/b;)V
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(Landroidx/animation/b;)V
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public c(Landroidx/animation/b;Z)V
    .locals 0
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/animation/b$a;->b(Landroidx/animation/b;)V

    return-void
.end method

.method public abstract d(Landroidx/animation/b;)V
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract e(Landroidx/animation/b;)V
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public f(Landroidx/animation/b;Z)V
    .locals 0
    .param p1    # Landroidx/animation/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/animation/b$a;->e(Landroidx/animation/b;)V

    return-void
.end method
