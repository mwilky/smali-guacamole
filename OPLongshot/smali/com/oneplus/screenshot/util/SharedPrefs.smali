.class public Lcom/oneplus/screenshot/util/SharedPrefs;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LONGSHOT_GUIDE_EDIT:Ljava/lang/String; = "longshot_guide_edit"

.field private static final PREFS_NAME:Ljava/lang/String; = "com.oneplus.screenshot"

.field private static final TAG:Ljava/lang/String; = "SharedPrefs"


# instance fields
.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "com.oneplus.screenshot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/util/SharedPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
