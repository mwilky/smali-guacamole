.class public Lcom/oneplus/screenshot/longshot/state/UnsupportedState;
.super Lcom/oneplus/screenshot/longshot/state/MainState;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.UnsupportedState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/MainState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/MainState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_UNSUPPORTED:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Longshot.UnsupportedState"

    const-string p2, "Unsupported"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method
