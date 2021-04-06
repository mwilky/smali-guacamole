.class public Lcom/oneplus/settings/ringtone/RingtoneInfo;
.super Ljava/lang/Object;
.source "RingtoneInfo.java"


# instance fields
.field private ringtoneUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/RingtoneInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/ringtone/RingtoneInfo;->ringtoneUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getRingtoneUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/RingtoneInfo;->ringtoneUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/RingtoneInfo;->title:Ljava/lang/String;

    return-object p0
.end method
