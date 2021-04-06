.class Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;
.super Lcom/android/server/am/dma;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->you:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Lcom/android/server/am/dma;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    return-void
.end method


# virtual methods
.method public oif(ILjava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->f4(IZ)V

    return-void
.end method

.method public rtg(IZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P3(IZ)V

    return-void
.end method

.method public wtn(ILjava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->I1(IZ)V

    return-void
.end method

.method public you(ILjava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g4(IZ)V

    return-void
.end method

.method public zta(IZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0(IZ)V

    return-void
.end method
