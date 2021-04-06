.class Lcom/android/server/wm/x/sis$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/x/sis;->gck(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/wm/x/sis;

.field final synthetic you:Ljava/lang/String;

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/x/sis;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/x/sis$sis;->sis:Lcom/android/server/wm/x/sis;

    iput p2, p0, Lcom/android/server/wm/x/sis$sis;->zta:I

    iput-object p3, p0, Lcom/android/server/wm/x/sis$sis;->you:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/x/sis$sis;->sis:Lcom/android/server/wm/x/sis;

    iget v1, p0, Lcom/android/server/wm/x/sis$sis;->zta:I

    iget-object p0, p0, Lcom/android/server/wm/x/sis$sis;->you:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/x/sis;->you(Lcom/android/server/wm/x/sis;ILjava/lang/String;)V

    return-void
.end method
