.class public Lcom/oneplus/settings/better/OPDarkModeAppModel;
.super Lcom/oneplus/settings/better/OPAppModel;
.source "OPDarkModeAppModel.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appLabel:Ljava/lang/String;

.field private appopsMode:I

.field private disable:Z

.field private editMode:Z

.field private isGameAPP:Z

.field private isSelected:Z

.field private label:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private shortCutIcon:Landroid/graphics/drawable/Drawable;

.field private shortCutId:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->shortCutId:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->uid:I

    iput-boolean p5, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->isSelected:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/oneplus/settings/better/OPDarkModeAppModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/oneplus/settings/better/OPDarkModeAppModel;

    iget-object v2, p1, Lcom/oneplus/settings/better/OPDarkModeAppModel;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->pkgName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->getUid()I

    move-result p1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->getUid()I

    move-result p0

    if-ne p1, p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->appLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getAppopsMode()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->appopsMode:I

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortCutIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->shortCutIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->shortCutId:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->type:I

    return p0
.end method

.method public getUid()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->uid:I

    return p0
.end method

.method public getVersionCode()I
    .locals 0

    iget p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->versionCode:I

    return p0
.end method

.method public isDisable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->disable:Z

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->editMode:Z

    return p0
.end method

.method public isGameAPP()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->isGameAPP:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->isSelected:Z

    return p0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public setAppopsMode(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->appopsMode:I

    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->disable:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->editMode:Z

    return-void
.end method

.method public setGameAPP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->isGameAPP:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->isSelected:Z

    return-void
.end method

.method public setShortCutIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->shortCutIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->type:I

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/better/OPDarkModeAppModel;->versionCode:I

    return-void
.end method
