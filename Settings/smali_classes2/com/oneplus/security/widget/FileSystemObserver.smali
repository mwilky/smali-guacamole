.class public Lcom/oneplus/security/widget/FileSystemObserver;
.super Landroid/os/FileObserver;
.source "FileSystemObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;
    }
.end annotation


# instance fields
.field private storageListener:Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/widget/FileSystemObserver;->storageListener:Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;->onFileChanged()V

    return-void
.end method

.method public setStorageListener(Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/security/widget/FileSystemObserver;->storageListener:Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;

    return-void
.end method
