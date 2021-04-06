.class Lcom/android/server/wm/x/rtg$sis;
.super Lcom/android/server/wm/x/rtg$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/x/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field private final sis:I

.field final synthetic tsu:Lcom/android/server/wm/x/rtg;

.field private final you:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/x/rtg;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/x/rtg$sis;->tsu:Lcom/android/server/wm/x/rtg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/x/rtg$ssp;-><init>(Lcom/android/server/wm/x/rtg;Lcom/android/server/wm/x/rtg$zta;)V

    iput p2, p0, Lcom/android/server/wm/x/rtg$sis;->sis:I

    iput-object p3, p0, Lcom/android/server/wm/x/rtg$sis;->you:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method sis()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/x/rtg$sis;->tsu:Lcom/android/server/wm/x/rtg;

    iget v1, p0, Lcom/android/server/wm/x/rtg$sis;->sis:I

    iget-object p0, p0, Lcom/android/server/wm/x/rtg$sis;->you:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/x/rtg;->bio(Lcom/android/server/wm/x/rtg;ILjava/lang/String;)V

    return-void
.end method
