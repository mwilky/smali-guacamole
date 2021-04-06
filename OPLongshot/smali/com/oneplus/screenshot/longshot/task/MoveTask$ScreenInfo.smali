.class Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/task/MoveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenInfo"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->this$0:Lcom/oneplus/screenshot/longshot/task/MoveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string p2, "Dump"

    invoke-direct {p1, p2, p3}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    return-void
.end method
