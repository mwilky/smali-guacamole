.class Lcom/oneplus/android/server/rtg/you$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/rtg/you;->sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:I

.field final synthetic tsu:Lcom/oneplus/android/server/rtg/you;

.field final synthetic you:Ljava/lang/String;

.field final synthetic zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/rtg/you;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/rtg/you$sis;->tsu:Lcom/oneplus/android/server/rtg/you;

    iput-object p2, p0, Lcom/oneplus/android/server/rtg/you$sis;->zta:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/android/server/rtg/you$sis;->you:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/android/server/rtg/you$sis;->sis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/rtg/you$sis;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/android/server/rtg/you$sis;->you:Ljava/lang/String;

    iget p0, p0, Lcom/oneplus/android/server/rtg/you$sis;->sis:I

    invoke-static {v0, v1, p0}, Lcom/oneplus/android/server/rtg/zta;->kth(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method