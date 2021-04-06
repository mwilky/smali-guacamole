.class Lcom/android/server/pm/PackageManagerService$4;
.super Landroid/content/pm/ParceledListSlice;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/ParceledListSlice<",
        "Landroid/content/IntentFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected writeElement(Landroid/content/IntentFilter;Landroid/os/Parcel;I)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->writeIntentInfoToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected bridge synthetic writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0

    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$4;->writeElement(Landroid/content/IntentFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$4;->writeElement(Landroid/content/IntentFilter;Landroid/os/Parcel;I)V

    return-void
.end method
