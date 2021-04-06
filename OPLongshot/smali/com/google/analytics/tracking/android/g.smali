.class Lcom/google/analytics/tracking/android/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/analytics/tracking/android/j;


# static fields
.field private static e:Lcom/google/analytics/tracking/android/g;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/g;->f:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/g;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/g;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/g;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/g;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/analytics/tracking/android/g;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/g;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/g;->c:Z

    return p1
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/google/analytics/tracking/android/g$a;

    const-string v1, "client_id_fetcher"

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/g$a;-><init>(Lcom/google/analytics/tracking/android/g;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/g;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/g;->c:Z

    if-nez v1, :cond_1

    const-string v1, "Waiting for clientId to load"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/g;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while waiting for clientId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/s;->a(Ljava/lang/String;)V

    :goto_0
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/g;->c:Z

    if-eqz v1, :cond_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_1
    const-string v0, "Loaded clientId"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Lcom/google/analytics/tracking/android/g;
    .locals 2

    sget-object v0, Lcom/google/analytics/tracking/android/g;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/g;->e:Lcom/google/analytics/tracking/android/g;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/analytics/tracking/android/g;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/g;->e:Lcom/google/analytics/tracking/android/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/analytics/tracking/android/g;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/analytics/tracking/android/g;->e:Lcom/google/analytics/tracking/android/g;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Storing clientId."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/s;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/g;->a:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Error writing to clientId file."

    :goto_0
    invoke-static {p1}, Lcom/google/analytics/tracking/android/s;->a(Ljava/lang/String;)V

    return v0

    :catch_1
    const-string p1, "Error creating clientId file."

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "&cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/g;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected g()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/g;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 7

    const-string v0, "gaClientId"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/g;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v3, 0x80

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    const-string v3, "clientId file seems corrupted, deleting it."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/s;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/g;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    :cond_0
    if-gtz v3, :cond_1

    const-string v3, "clientId file seems empty, deleting it."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/s;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v1, v6

    goto :goto_1

    :catch_1
    move-object v1, v6

    :catch_2
    const-string v2, "Error reading clientId file, deleting it."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/s;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/g;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :catch_3
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/g;->g()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method
