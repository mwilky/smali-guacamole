.class Lcom/google/tagmanager/PreviewManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PreviewManager$PreviewMode;
    }
.end annotation


# static fields
.field private static c:Lcom/google/tagmanager/PreviewManager;


# instance fields
.field private volatile a:Lcom/google/tagmanager/PreviewManager$PreviewMode;

.field private volatile b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewManager;->a()V

    return-void
.end method

.method static c()Lcom/google/tagmanager/PreviewManager;
    .locals 2

    const-class v0, Lcom/google/tagmanager/PreviewManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/tagmanager/PreviewManager;->c:Lcom/google/tagmanager/PreviewManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/tagmanager/PreviewManager;

    invoke-direct {v1}, Lcom/google/tagmanager/PreviewManager;-><init>()V

    sput-object v1, Lcom/google/tagmanager/PreviewManager;->c:Lcom/google/tagmanager/PreviewManager;

    :cond_0
    sget-object v1, Lcom/google/tagmanager/PreviewManager;->c:Lcom/google/tagmanager/PreviewManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method a()V
    .locals 1

    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->a:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->b:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()Lcom/google/tagmanager/PreviewManager$PreviewMode;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->a:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    return-object v0
.end method
