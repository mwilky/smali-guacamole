.class Lcom/android/server/am/veq$rtg;
.super Lcom/android/server/am/dma;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/veq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/veq;


# direct methods
.method private constructor <init>(Lcom/android/server/am/veq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/veq$rtg;->you:Lcom/android/server/am/veq;

    invoke-direct {p0}, Lcom/android/server/am/dma;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/veq;Lcom/android/server/am/veq$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/veq$rtg;-><init>(Lcom/android/server/am/veq;)V

    return-void
.end method


# virtual methods
.method public noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/veq$rtg;->you:Lcom/android/server/am/veq;

    invoke-static {p0, p2}, Lcom/android/server/am/veq;->igw(Lcom/android/server/am/veq;I)V

    return-void
.end method

.method public ywr(II)V
    .locals 1

    const/4 v0, 0x6

    if-gt p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/veq$rtg;->you:Lcom/android/server/am/veq;

    invoke-static {p0, p1}, Lcom/android/server/am/veq;->igw(Lcom/android/server/am/veq;I)V

    :cond_0
    return-void
.end method
