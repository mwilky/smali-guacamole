.class public final Landroidx/core/content/res/FontResourcesParserCompat$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/content/res/FontResourcesParserCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/core/provider/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroidx/core/provider/a;II)V
    .locals 0
    .param p1    # Landroidx/core/provider/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/FontResourcesParserCompat$d;->a:Landroidx/core/provider/a;

    iput p2, p0, Landroidx/core/content/res/FontResourcesParserCompat$d;->c:I

    iput p3, p0, Landroidx/core/content/res/FontResourcesParserCompat$d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$d;->c:I

    return v0
.end method

.method public b()Landroidx/core/provider/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$d;->a:Landroidx/core/provider/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$d;->b:I

    return v0
.end method
