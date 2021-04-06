.class public Lcom/oneplus/screenshot/util/AppIconInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field activityLabel:Ljava/lang/String;

.field appIconDrawable:Landroid/graphics/drawable/Drawable;

.field appNameToDisplay:Ljava/lang/String;

.field appNameToShare:Ljava/lang/String;

.field isSelected:Z

.field isShareChooser:Z

.field packagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f100083

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appNameToDisplay:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appNameToShare:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->packagName:Ljava/lang/String;

    const v0, 0x7f080099

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->isShareChooser:Z

    const v0, 0x7f100084

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->activityLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->activityLabel:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->packagName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appNameToShare:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->packagName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->activityLabel:Ljava/lang/String;

    :goto_1
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appNameToDisplay:Ljava/lang/String;

    iget-object p2, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->activityLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->activityLabel:Ljava/lang/String;

    :goto_2
    iput-object p1, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->activityLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->activityLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppNameToDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appNameToDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getAppNameToShare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->appNameToShare:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->packagName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->isSelected:Z

    return v0
.end method

.method public isShareChooser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->isShareChooser:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/util/AppIconInfo;->isSelected:Z

    return-void
.end method
