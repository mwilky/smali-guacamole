.class public Landroidx/appcompat/app/f;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/f$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/net/Uri;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/appcompat/app/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://settings/secure/navigation_mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/f;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroidx/appcompat/app/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/f;->a:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/f;->b:Landroidx/appcompat/app/f$a;

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/app/f;->c:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Landroidx/appcompat/app/GestureBarAdapter;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Landroidx/appcompat/app/f;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/appcompat/app/f;->b:Landroidx/appcompat/app/f$a;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/app/f;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-interface {p2, p1}, Landroidx/appcompat/app/f$a;->onNavigationBarModeChanged(Z)V

    :cond_0
    return-void
.end method
