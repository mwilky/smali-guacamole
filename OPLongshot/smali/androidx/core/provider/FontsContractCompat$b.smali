.class public Landroidx/core/provider/FontsContractCompat$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x3e8L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$b;->a:Landroid/net/Uri;

    iput p2, p0, Landroidx/core/provider/FontsContractCompat$b;->b:I

    iput p3, p0, Landroidx/core/provider/FontsContractCompat$b;->c:I

    iput-boolean p4, p0, Landroidx/core/provider/FontsContractCompat$b;->d:Z

    iput p5, p0, Landroidx/core/provider/FontsContractCompat$b;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroidx/core/provider/FontsContractCompat$b;->e:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget v0, p0, Landroidx/core/provider/FontsContractCompat$b;->b:I

    return v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public d()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x3e8L
    .end annotation

    iget v0, p0, Landroidx/core/provider/FontsContractCompat$b;->c:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/provider/FontsContractCompat$b;->d:Z

    return v0
.end method
