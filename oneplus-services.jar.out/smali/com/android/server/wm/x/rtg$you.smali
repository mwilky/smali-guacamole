.class Lcom/android/server/wm/x/rtg$you;
.super Lcom/android/server/wm/x/rtg$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/x/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/wm/x/rtg;

.field private final you:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/x/rtg;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/x/rtg$you;->sis:Lcom/android/server/wm/x/rtg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/x/rtg$ssp;-><init>(Lcom/android/server/wm/x/rtg;Lcom/android/server/wm/x/rtg$zta;)V

    iput p2, p0, Lcom/android/server/wm/x/rtg$you;->you:I

    return-void
.end method


# virtual methods
.method sis()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/x/rtg$you;->sis:Lcom/android/server/wm/x/rtg;

    iget p0, p0, Lcom/android/server/wm/x/rtg$you;->you:I

    invoke-static {v0, p0}, Lcom/android/server/wm/x/rtg;->you(Lcom/android/server/wm/x/rtg;I)V

    return-void
.end method
