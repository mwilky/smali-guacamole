.class public abstract Landroidx/animation/BidirectionalTypeConverter;
.super Landroidx/animation/TypeConverter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/BidirectionalTypeConverter$InvertedConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/animation/TypeConverter<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field private mInvertedConverter:Landroidx/animation/BidirectionalTypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/animation/BidirectionalTypeConverter<",
            "TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/animation/TypeConverter;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public abstract convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation
.end method

.method public invert()Landroidx/animation/BidirectionalTypeConverter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/animation/BidirectionalTypeConverter<",
            "TV;TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroidx/animation/BidirectionalTypeConverter;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/animation/BidirectionalTypeConverter$InvertedConverter;

    invoke-direct {v0, p0}, Landroidx/animation/BidirectionalTypeConverter$InvertedConverter;-><init>(Landroidx/animation/BidirectionalTypeConverter;)V

    iput-object v0, p0, Landroidx/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroidx/animation/BidirectionalTypeConverter;

    :cond_0
    iget-object v0, p0, Landroidx/animation/BidirectionalTypeConverter;->mInvertedConverter:Landroidx/animation/BidirectionalTypeConverter;

    return-object v0
.end method
