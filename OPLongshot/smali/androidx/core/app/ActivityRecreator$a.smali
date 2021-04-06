.class final Landroidx/core/app/ActivityRecreator$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/ActivityRecreator;->recreate(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/app/ActivityRecreator$d;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/core/app/ActivityRecreator$d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/ActivityRecreator$a;->a:Landroidx/core/app/ActivityRecreator$d;

    iput-object p2, p0, Landroidx/core/app/ActivityRecreator$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/ActivityRecreator$a;->a:Landroidx/core/app/ActivityRecreator$d;

    iget-object v1, p0, Landroidx/core/app/ActivityRecreator$a;->b:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/core/app/ActivityRecreator$d;->a:Ljava/lang/Object;

    return-void
.end method
