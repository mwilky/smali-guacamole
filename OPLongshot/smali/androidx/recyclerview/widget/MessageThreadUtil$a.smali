.class Landroidx/recyclerview/widget/MessageThreadUtil$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/MessageThreadUtil$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a()Landroidx/recyclerview/widget/MessageThreadUtil$b;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(I)V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$b;->b:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$b;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iget v3, v1, Landroidx/recyclerview/widget/MessageThreadUtil$b;->b:I

    if-ne v3, p1, :cond_1

    iput-object v2, v0, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/MessageThreadUtil$b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    move-object v1, v2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c(Landroidx/recyclerview/widget/MessageThreadUtil$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    goto :goto_0

    :cond_1
    iput-object p1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d(Landroidx/recyclerview/widget/MessageThreadUtil$b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iput-object v0, p1, Landroidx/recyclerview/widget/MessageThreadUtil$b;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$a;->a:Landroidx/recyclerview/widget/MessageThreadUtil$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
