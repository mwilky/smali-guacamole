.class public Lcom/oneplus/settings/ui/OPCustomItemEntity;
.super Ljava/lang/Object;
.source "OPCustomItemEntity.java"


# instance fields
.field public index:I

.field public name:Ljava/lang/String;

.field public resId:I

.field public selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->name:Ljava/lang/String;

    iput p2, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->resId:I

    iput p3, p0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    return-void
.end method
