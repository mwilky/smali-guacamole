.class public final synthetic Lcom/android/server/wm/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic rtg:Landroid/graphics/Rect;

.field public final synthetic sis:I

.field public final synthetic tsu:Lcom/android/server/wm/WindowState;

.field public final synthetic you:I

.field public final synthetic zta:Lcom/android/server/wm/cgv;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/cgv;IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/tsu;->zta:Lcom/android/server/wm/cgv;

    iput p2, p0, Lcom/android/server/wm/tsu;->you:I

    iput p3, p0, Lcom/android/server/wm/tsu;->sis:I

    iput-object p4, p0, Lcom/android/server/wm/tsu;->tsu:Lcom/android/server/wm/WindowState;

    iput-object p5, p0, Lcom/android/server/wm/tsu;->rtg:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/tsu;->zta:Lcom/android/server/wm/cgv;

    iget v1, p0, Lcom/android/server/wm/tsu;->you:I

    iget v2, p0, Lcom/android/server/wm/tsu;->sis:I

    iget-object v3, p0, Lcom/android/server/wm/tsu;->tsu:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/tsu;->rtg:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/wm/cgv;->gwm(IILcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    return-void
.end method
