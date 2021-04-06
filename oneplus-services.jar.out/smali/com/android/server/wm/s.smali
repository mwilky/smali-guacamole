.class public Lcom/android/server/wm/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOplusGlobalDragAndDropManager;


# static fields
.field private static final sis:Z

.field private static volatile tsu:Lcom/android/server/wm/s; = null

.field public static final you:Ljava/lang/String; = "OplusGlobalDragAndDropManagerService"


# instance fields
.field private zta:Lcom/android/server/wm/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/s;->sis:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/s;->tsu:Lcom/android/server/wm/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zta()Lcom/android/server/wm/s;
    .locals 2

    sget-object v0, Lcom/android/server/wm/s;->tsu:Lcom/android/server/wm/s;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/s;->tsu:Lcom/android/server/wm/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/s;

    invoke-direct {v1}, Lcom/android/server/wm/s;-><init>()V

    sput-object v1, Lcom/android/server/wm/s;->tsu:Lcom/android/server/wm/s;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/s;->tsu:Lcom/android/server/wm/s;

    return-object v0
.end method


# virtual methods
.method public IfCancelUnSupportDrop(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/s;->zta:Lcom/android/server/wm/r;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/r;->ssp()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const-string v2, "OplusGlobalDragAndDropManagerService"

    if-eqz v1, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_3

    :cond_2
    const-string p0, "IfCancelUnSupportDrop same window enter"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v1

    const/16 v3, 0x64

    if-eq v3, v1, :cond_7

    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_6

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "IfCancelUnSupportDrop not zoom window curWinMode= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/s;->ifCurWinSupportDrop(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/s;->zta:Lcom/android/server/wm/r;

    if-eqz v1, :cond_9

    const-string v1, "IfCancelUnSupportDrag targetpkg not in list, Invalid Send!"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/s;->zta:Lcom/android/server/wm/r;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/r;->sis(Lcom/android/server/wm/WindowState;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/s;->zta:Lcom/android/server/wm/r;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/r;->igw(Landroid/content/Intent;)V

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public hideZoomWindowIfNeed(FFLcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/t;->rtg()Lcom/android/server/wm/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/t;->kth()Z

    move-result p0

    const-string v0, "OplusGlobalDragAndDropManagerService"

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "hideZoomWindowIfNeed GlobalDragShare disabled!"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/16 p0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p3, p0, v1}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    if-eqz p0, :cond_7

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    float-to-int p0, p1

    float-to-int p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_4

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " hideZoomWindowIfNeed outside zoomWidnow zoomRec= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/wm/ColorZoomWindowManagerService;->getInstance()Lcom/android/server/wm/ColorZoomWindowManagerService;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->hideZoomWindow(I)V

    goto :goto_0

    :cond_5
    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_6

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_9

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " hideZoomWindowIfNeed inside zoomWinodw zoomRec= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_8

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_9

    :cond_8
    const-string p0, " hideZoomWindowIfNeed zoomWidnow is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_0
    return-void
.end method

.method public ifCurWinSupportDrop(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    invoke-static {}, Lcom/android/server/wm/t;->rtg()Lcom/android/server/wm/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/t;->kth()Z

    move-result p0

    const/4 v0, 0x1

    const-string v1, "OplusGlobalDragAndDropManagerService"

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "ifCurWinSupportDrop GlobalDragShare disable!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    if-eqz p1, :cond_6

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/android/server/wm/t;->rtg()Lcom/android/server/wm/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/t;->igw(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/android/server/wm/t;->rtg()Lcom/android/server/wm/t;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/t;->wtn(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    sget-boolean p0, Lcom/android/server/wm/s;->sis:Z

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz p0, :cond_5

    :cond_4
    const-string p0, "ifCurWinSupportDrop targetpkg In list!"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public setGlobalDragAndDropCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/r;

    iput-object p1, p0, Lcom/android/server/wm/s;->zta:Lcom/android/server/wm/r;

    return-void
.end method
