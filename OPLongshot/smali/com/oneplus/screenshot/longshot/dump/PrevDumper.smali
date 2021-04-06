.class public Lcom/oneplus/screenshot/longshot/dump/PrevDumper;
.super Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "PrevDumper"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;-><init>(Landroid/content/Context;IZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p2, "Curr"

    goto :goto_0

    :cond_0
    const-string p2, "Last"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-void
.end method
