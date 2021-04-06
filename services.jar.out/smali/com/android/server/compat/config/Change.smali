.class public Lcom/android/server/compat/config/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field private description:Ljava/lang/String;

.field private disabled:Z

.field private enableAfterTargetSdk:I

.field private id:J

.field private loggingOnly:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Change;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/compat/config/Change;

    invoke-direct {v0}, Lcom/android/server/compat/config/Change;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/compat/config/Change;->setId(J)V

    :cond_0
    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v3, v1

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setName(Ljava/lang/String;)V

    :cond_1
    const-string v3, "disabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setDisabled(Z)V

    :cond_2
    const-string/jumbo v3, "loggingOnly"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setLoggingOnly(Z)V

    :cond_3
    const-string v3, "enableAfterTargetSdk"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setEnableAfterTargetSdk(I)V

    :cond_4
    const-string v3, "description"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setDescription(Ljava/lang/String;)V

    :cond_5
    invoke-static {p0}, Lcom/android/server/compat/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setValue(Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/compat/config/Change;->disabled:Z

    return v0
.end method

.method public getEnableAfterTargetSdk()I
    .locals 1

    iget v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/compat/config/Change;->id:J

    return-wide v0
.end method

.method public getLoggingOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/compat/config/Change;->disabled:Z

    return-void
.end method

.method public setEnableAfterTargetSdk(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/compat/config/Change;->id:J

    return-void
.end method

.method public setLoggingOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-void
.end method
