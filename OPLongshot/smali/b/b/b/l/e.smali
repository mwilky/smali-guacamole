.class public Lb/b/b/l/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8ff

    const/16 v2, 0x7f4

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    :cond_0
    sput v2, Lb/b/b/l/e;->a:I

    sput v1, Lb/b/b/l/e;->b:I

    return-void
.end method
