.class public Lcom/oneplus/settings/defaultapp/controller/DefaultCameraController;
.super Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;
.source "DefaultCameraController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/defaultapp/controller/DefaultBasePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
