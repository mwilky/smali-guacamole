.class Lcom/oneplus/android/server/OpMotorManagerService$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/OpMotorManagerService;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/OpMotorManagerService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/OpMotorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$ssp;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/oneplus/android/server/OpMotorManagerService;->wtn()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$ssp;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-static {p0}, Lcom/oneplus/android/server/OpMotorManagerService;->gck(Lcom/oneplus/android/server/OpMotorManagerService;)V

    :cond_0
    return-void
.end method
