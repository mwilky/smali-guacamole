.class public Lcom/oneplus/settings/defaultapp/view/DefaultMusicPicker;
.super Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;
.source "DefaultMusicPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getType()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
