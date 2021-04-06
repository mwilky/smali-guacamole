.class Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTemp:Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;

    invoke-direct {v0}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/appcompat/widget/EpicenterTranslateClipReveal$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroidx/appcompat/widget/EpicenterTranslateClipReveal$b;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;)Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;

    iget v1, p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->b:I

    iget v2, p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->b:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->b:I

    iget v1, p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->a:I

    iget v2, p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->a:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->a:I

    iget p2, p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->c:F

    iget p3, p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->c:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;->c:F

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;

    check-cast p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;->evaluate(FLandroidx/appcompat/widget/EpicenterTranslateClipReveal$b;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;)Landroidx/appcompat/widget/EpicenterTranslateClipReveal$b;

    move-result-object p1

    return-object p1
.end method
