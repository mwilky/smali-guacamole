.class public Landroidx/core/provider/FontsContractCompat$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroidx/core/provider/FontsContractCompat$b;


# direct methods
.method public constructor <init>(I[Landroidx/core/provider/FontsContractCompat$b;)V
    .locals 0
    .param p2    # [Landroidx/core/provider/FontsContractCompat$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/provider/FontsContractCompat$a;->a:I

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$a;->b:[Landroidx/core/provider/FontsContractCompat$b;

    return-void
.end method


# virtual methods
.method public a()[Landroidx/core/provider/FontsContractCompat$b;
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$a;->b:[Landroidx/core/provider/FontsContractCompat$b;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroidx/core/provider/FontsContractCompat$a;->a:I

    return v0
.end method
