.class Lcom/oneplus/screenshot/GlobalScreenshot$35$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot$35;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/screenshot/GlobalScreenshot$35;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot$35;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$35;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "Longshot.GlobalScreenshot"

    const-string v0, " screenshotFadeOutAnim end"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$35$1;->this$1:Lcom/oneplus/screenshot/GlobalScreenshot$35;

    iget-object p1, p1, Lcom/oneplus/screenshot/GlobalScreenshot$35;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "Longshot.GlobalScreenshot"

    const-string v0, " screenshotFadeOutAnim start"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
