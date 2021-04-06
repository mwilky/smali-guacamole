.class Lcom/oneplus/android/server/rtg/you$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/rtg/you;->sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/oneplus/android/server/rtg/you;

.field final synthetic you:Ljava/lang/String;

.field final synthetic zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/rtg/you;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/rtg/you$you;->sis:Lcom/oneplus/android/server/rtg/you;

    iput-object p2, p0, Lcom/oneplus/android/server/rtg/you$you;->zta:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/android/server/rtg/you$you;->you:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/rtg/you$you;->zta:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/android/server/rtg/you$you;->you:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oneplus/android/server/rtg/zta;->cno(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
