.class Lcom/google/android/material/picker/NumberPicker$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$e;->a:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$e;->a:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumberPicker;->performLongClick()Z

    return-void
.end method
