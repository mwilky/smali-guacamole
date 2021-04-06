.class public final Lcom/oneplus/houston/apkserver/bridge/Param;
.super Ljava/lang/Object;
.source "Param.java"


# instance fields
.field param1:Ljava/lang/String;

.field param2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Lcom/oneplus/houston/apkserver/bridge/Param;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "param1"

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "param2"

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
