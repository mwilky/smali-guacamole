.class Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirtualKeyboardFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$WindowFocusChangeListener;->this$0:Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-static {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->access$000(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    :cond_0
    return-void
.end method
