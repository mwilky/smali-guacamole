.class Lcom/android/settings/users/UserSettings$9$1;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings$9;->onPhotoChanged(Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/users/UserSettings$9;

.field final synthetic val$photo:Landroid/graphics/drawable/Drawable;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings$9;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$9$1;->this$1:Lcom/android/settings/users/UserSettings$9;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings$9$1;->val$user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$9$1;->val$photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$9$1;->this$1:Lcom/android/settings/users/UserSettings$9;

    iget-object v0, v0, Lcom/android/settings/users/UserSettings$9;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$400(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$9$1;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$9$1;->val$photo:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method
