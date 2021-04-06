.class Lcom/android/server/wm/p$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/p;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/p;


# direct methods
.method constructor <init>(Lcom/android/server/wm/p;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/p$zta;->zta:Lcom/android/server/wm/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/p$zta;->zta:Lcom/android/server/wm/p;

    invoke-virtual {p0}, Lcom/android/server/wm/p;->oif()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
