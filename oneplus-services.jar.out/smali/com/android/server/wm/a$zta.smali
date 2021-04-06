.class Lcom/android/server/wm/a$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private sis:Landroid/view/InputChannel;

.field final synthetic tsu:Lcom/android/server/wm/a;

.field private you:Landroid/view/InputChannel;

.field private zta:Lcom/android/server/wm/a$you;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/a;Lcom/android/server/wm/a$you;Landroid/view/InputChannel;Landroid/view/InputChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/a$zta;->tsu:Lcom/android/server/wm/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/a$zta;->zta:Lcom/android/server/wm/a$you;

    iput-object p3, p0, Lcom/android/server/wm/a$zta;->you:Landroid/view/InputChannel;

    iput-object p4, p0, Lcom/android/server/wm/a$zta;->sis:Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/a$zta;->zta:Lcom/android/server/wm/a$you;

    invoke-virtual {v0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/a$zta;->you:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object p0, p0, Lcom/android/server/wm/a$zta;->sis:Landroid/view/InputChannel;

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void
.end method
