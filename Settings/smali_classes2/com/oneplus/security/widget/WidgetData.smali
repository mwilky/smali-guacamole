.class public Lcom/oneplus/security/widget/WidgetData;
.super Ljava/lang/Object;
.source "WidgetData.java"


# instance fields
.field private title:Ljava/lang/String;

.field private type:I

.field private units:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    iput-object p2, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    iput-object p2, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/security/widget/WidgetData;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    return p0
.end method

.method public getUnits()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetData;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetData [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", units="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
