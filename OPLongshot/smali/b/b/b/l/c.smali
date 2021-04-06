.class public Lb/b/b/l/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x10000000

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    invoke-static {}, Lb/b/e/a;->a()Z

    move-result v0

    :cond_0
    sput v1, Lb/b/b/l/c;->a:I

    return-void
.end method
