.class public Lcom/android/settings/OPDeviceNameActivity;
.super Landroid/app/Activity;
.source "OPDeviceNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OPDeviceNameActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private createDialog()V
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->op_device_name_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->edit_device_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings/OPDeviceNameActivity;->initDeviceName(Landroid/widget/EditText;)V

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->my_device_info_device_name_preference_title:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setBottomShow(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$R1rs1sdSj5hWOOUiBVQ4cuMHxuc;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$R1rs1sdSj5hWOOUiBVQ4cuMHxuc;-><init>(Lcom/android/settings/OPDeviceNameActivity;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$sF6cmpBdviiclSAD4JGw7YnU0dM;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$sF6cmpBdviiclSAD4JGw7YnU0dM;-><init>(Lcom/android/settings/OPDeviceNameActivity;Landroid/widget/EditText;)V

    const v1, 0x104000a

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$S-dH1IjLZudbJ_QjRcAsplCXjyc;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$S-dH1IjLZudbJ_QjRcAsplCXjyc;-><init>(Lcom/android/settings/OPDeviceNameActivity;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private initDeviceName(Landroid/widget/EditText;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_modified_devicename"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    const-string v0, "oneplus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ONE E1001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ONE E1003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ONE E1005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "ro.display.series"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "1"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    new-instance v0, Lcom/android/settings/OPDeviceNameActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/OPDeviceNameActivity$1;-><init>(Lcom/android/settings/OPDeviceNameActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private isNotEmojiCharacter(C)Z
    .locals 0

    if-eqz p1, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_3

    const/16 p0, 0xa

    if-eq p1, p0, :cond_3

    const/16 p0, 0xd

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

    if-lt p1, p0, :cond_0

    const p0, 0xd7ff

    if-le p1, p0, :cond_3

    :cond_0
    const p0, 0xe000

    if-lt p1, p0, :cond_1

    const p0, 0xfffd

    if-le p1, p0, :cond_3

    :cond_1
    const/high16 p0, 0x10000

    if-lt p1, p0, :cond_2

    const p0, 0x10ffff

    if-gt p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createDialog$1(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    sget p1, Lcom/android/settings/R$string;->wifi_p2p_failed_rename_message:I

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    move p2, p3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/OPDeviceNameActivity;->isNotEmojiCharacter(C)Z

    move-result v0

    if-nez v0, :cond_3

    sget p1, Lcom/android/settings/R$string;->wifi_p2p_failed_rename_message:I

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "oem_oneplus_devicename"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "oem_oneplus_modified_devicename"

    const-string v0, "1"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "device_name"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    :cond_5
    const-string/jumbo p2, "wifip2p"

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_6
    iget-object p0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$createDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$createDialog$0$OPDeviceNameActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/OPDeviceNameActivity;->lambda$createDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$createDialog$1$OPDeviceNameActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/OPDeviceNameActivity;->lambda$createDialog$1(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$createDialog$2$OPDeviceNameActivity(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/OPDeviceNameActivity;->lambda$createDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/android/settings/OPDeviceNameActivity;->createDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
