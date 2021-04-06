.class Lcom/android/server/ire$you;
.super Lcom/android/server/am/dma;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/ire;


# direct methods
.method private constructor <init>(Lcom/android/server/ire;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ire$you;->you:Lcom/android/server/ire;

    invoke-direct {p0}, Lcom/android/server/am/dma;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ire;Lcom/android/server/ire$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ire$you;-><init>(Lcom/android/server/ire;)V

    return-void
.end method


# virtual methods
.method public bio(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ire$you;->you:Lcom/android/server/ire;

    invoke-virtual {p0, p1}, Lcom/android/server/ire;->y(I)V

    return-void
.end method
