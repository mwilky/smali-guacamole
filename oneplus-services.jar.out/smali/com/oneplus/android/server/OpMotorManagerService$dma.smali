.class Lcom/oneplus/android/server/OpMotorManagerService$dma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/OpMotorManagerService;->f1()V
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

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$dma;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$dma;->zta:Lcom/oneplus/android/server/OpMotorManagerService;

    const-string p1, "OpMotorManagerService"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/oneplus/android/server/OpMotorManagerService;->bio(Lcom/oneplus/android/server/OpMotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    return-void
.end method
