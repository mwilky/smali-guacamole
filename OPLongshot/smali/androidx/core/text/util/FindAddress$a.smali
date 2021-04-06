.class Landroidx/core/text/util/FindAddress$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/text/util/FindAddress$a;->a:I

    iput p2, p0, Landroidx/core/text/util/FindAddress$a;->b:I

    iput p3, p0, Landroidx/core/text/util/FindAddress$a;->c:I

    iput p4, p0, Landroidx/core/text/util/FindAddress$a;->d:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v1, p0, Landroidx/core/text/util/FindAddress$a;->a:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Landroidx/core/text/util/FindAddress$a;->b:I

    if-le p1, v1, :cond_1

    :cond_0
    iget v1, p0, Landroidx/core/text/util/FindAddress$a;->c:I

    if-eq p1, v1, :cond_1

    iget v1, p0, Landroidx/core/text/util/FindAddress$a;->d:I

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
