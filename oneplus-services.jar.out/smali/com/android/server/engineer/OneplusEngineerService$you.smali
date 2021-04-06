.class Lcom/android/server/engineer/OneplusEngineerService$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/engineer/OneplusEngineerService;

.field private zta:I


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "OneplusEngineerService"

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->you(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "getPcbNumber"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QcHandler: pcb null or not :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v4}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v4, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v4}, Lcom/android/server/engineer/OneplusEngineerService;->ssp(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/server/engineer/OneplusEngineerService;->rtg(Lcom/android/server/engineer/OneplusEngineerService;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QcHandler:pcb ="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, -0x1

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v4}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->rtg(Lcom/android/server/engineer/OneplusEngineerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QcHandler:final pcb = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "gsm.serial"

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->you:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    iget p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
