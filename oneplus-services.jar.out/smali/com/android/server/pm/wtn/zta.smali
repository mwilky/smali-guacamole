.class public Lcom/android/server/pm/wtn/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/pm/permission/IOpSensitivePermGrantPolicyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/wtn/zta$zta;
    }
.end annotation


# static fields
.field private static final bio:I = 0x1

.field private static final bvj:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field private static final cno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final dma:Z

.field private static final gck:I

.field private static final gwm:I = 0x0

.field private static final ibl:I = 0x4

.field private static final igw:I = 0x2

.field private static final kth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final obl:Ljava/lang/String; = "extras:"

.field private static final oif:Ljava/lang/String; = "728E6B5E6D3FAA00E2DE12CC464D027BFFE2DD87329967F72028F2FD13C122E9"

.field private static final oxb:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkPEAxZKJ0SSQRxlUCFbK4GiOH2OcwN5wRls3d5mogetljPRlKkFWOwyklFFG7tMICH0qcLWWtTEnIXVr++VqrPzK7UAzkWBw59nEZ7s82qq91Qe9seaPcrzS4V0RMatgLc5HmoDx/9Wu1zh99JzT2r9nuWNf2/dRgf2bZO92vq7nPEwgF1hstjWHITEYx3dqY+G+DoOIurk33/E+Z60laVZFfe1OHRnhO71zuzVth1Z1K4oNPmTSsvUpTCaS9yBz73bJlrMMen0Gzyn5dx7Rk4WATnM4rougsR3OUApquJEXD2dDgJHRu20Bp95R8/0pXtOt+00QQcxVxRbsTw/15wIDAQAB"

.field private static qbh:Ljava/lang/Boolean; = null

.field private static final rtg:Ljava/lang/String; = "low_perm_group"

.field private static final sis:Ljava/lang/String; = "OpSensitivePermGrantPolicyManager"

.field private static final ssp:Ljava/lang/String; = "middle_perm_group"

.field static tsu:Z = false

.field private static final ugm:I = 0x2

.field private static final vdb:I = 0x3

.field private static final wtn:I = 0x3

.field private static final ywr:Ljava/lang/String; = "OplusPermissionKeyDebug"

.field private static final zgw:Ljava/lang/String; = "OplusPermissionKey"


# instance fields
.field private you:Lcom/android/server/pm/wtn/zta$zta;

.field private zta:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/wtn/zta;->tsu:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "low_perm_group"

    const-string v2, "middle_perm_group"

    const-string v3, "com.oplus.permission.safe.PRIVATE"

    const-string v4, "com.oplus.permission.safe.RUS"

    const-string v5, "com.oplus.permission.safe.SAU"

    const-string v6, "com.oplus.permission.safe.FACE"

    const-string v7, "com.oplus.permission.safe.FINGERPRINT"

    const-string v8, "com.oplus.permission.safe.BACKUP"

    const-string v9, "com.oplus.permission.safe.SECURITY"

    const-string v10, "com.oplus.permission.safe.PERSISTENT"

    const-string v11, "com.oplus.permission.safe.FINANCIAL"

    const-string v12, "com.oplus.permission.safe.AUTHENTICATE"

    const-string v13, "com.oplus.permission.safe.KEY_EVENT"

    const-string v14, "com.oplus.permission.safe.PASSWORD"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/wtn/zta;->cno:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oplus.permission.safe.ACCOUNTS"

    const-string v2, "com.oplus.permission.safe.SAFE_MANAGER"

    const-string v3, "com.oplus.permission.safe.APP_MANAGER"

    const-string v4, "com.oplus.permission.safe.DCS"

    const-string v5, "com.oplus.permission.safe.UPDATE"

    const-string v6, "com.oplus.permission.safe.PUSH"

    const-string v7, "com.oplus.permission.safe.AI_APP"

    const-string v8, "com.oplus.permission.safe.MMS"

    const-string v9, "com.oplus.permission.safe.PHONE"

    const-string v10, "com.oplus.permission.safe.KEYGUARD"

    const-string v11, "com.oplus.permission.safe.LOCATION"

    const-string v12, "com.oplus.permission.safe.NFC"

    const-string v13, "com.oplus.permission.safe.CONNECTIVITY"

    const-string v14, "com.oplus.permission.safe.BLUETOOTH"

    const-string v15, "com.oplus.permission.safe.CAMERA"

    const-string v16, "com.oplus.permission.safe.PICTURE"

    const-string v17, "com.oplus.permission.safe.CLIPBOARD"

    const-string v18, "com.oplus.permission.safe.LOG"

    const-string v19, "com.oplus.permission.safe.CLOUD"

    const-string v20, "com.oplus.permission.safe.SENSOR"

    const-string v21, "com.oplus.permission.safe.IOT"

    const-string v22, "com.oplus.permission.safe.PROTECT"

    const-string v23, "com.oplus.permission.safe.SDCARD"

    const-string v24, "com.oplus.permission.safe.USB"

    const-string v25, "com.oplus.permission.safe.EMAIL"

    const-string v26, "com.oplus.permission.safe.SETTINGS"

    const-string v27, "com.oplus.permission.safe.MEDIA"

    const-string v28, "com.oplus.permission.safe.GAME"

    const-string v29, "com.oplus.permission.safe.ASSISTANT"

    const-string v30, "com.oplus.permission.safe.SMART_HOME"

    const-string v31, "com.oplus.permission.safe.WEAR"

    const-string v32, "com.oplus.permission.safe.VOICE"

    const-string v33, "com.oplus.permission.safe.ENTERTAINMENT"

    const-string v34, "com.oplus.permission.safe.ACCESSIBILITY"

    const-string v35, "com.oplus.permission.safe.SHARE"

    const-string v36, "com.oplus.permission.safe.READ_COMMON"

    const-string v37, "com.oplus.permission.safe.SETTINGS_SEARCH"

    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/wtn/zta;->kth:Ljava/util/ArrayList;

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/pm/wtn/zta;->gck:I

    const-string v0, "persist.sys.debug_refined_perm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/wtn/zta;->dma:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/wtn/zta;->qbh:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/wtn/zta;->zta:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method private static sis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/zta;->tsu()Lcom/android/server/pm/zta;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/zta;->rtg(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    sget-boolean v1, Lcom/android/server/pm/wtn/zta;->tsu:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSha256CertMatchPackage target cert bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSensitivePermGrantPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256Certificate([B)Z

    move-result p0

    return p0
.end method

.method private static tsu(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result p0

    return p0
.end method

.method private you(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/server/pm/wtn/zta;->kth:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/server/pm/wtn/zta;->cno:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v4, v7

    :goto_0
    if-nez v1, :cond_2

    return v8

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/wtn/zta;->zta(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    if-eqz v9, :cond_3

    return v7

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/wtn/zta;->tsu(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v7

    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v9, "OpSensitivePermGrantPolicyManager"

    if-eqz v3, :cond_19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v10, "OplusPermissionKey"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no OplusPermissionKey in "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    if-eqz v10, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v10

    if-lez v10, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v10, v10, v8

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/server/pm/zta;->tsu()Lcom/android/server/pm/zta;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v12, v12, v8

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    const-string v13, "SHA256"

    invoke-virtual {v10, v12, v13, v8}, Lcom/android/server/pm/zta;->you([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    move-object v10, v11

    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to compute cert digest for "

    goto :goto_1

    :cond_8
    iget-object v12, v0, Lcom/android/server/pm/wtn/zta;->you:Lcom/android/server/pm/wtn/zta$zta;

    if-eqz v12, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10, v3}, Lcom/android/server/pm/wtn/zta$zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v0, v0, Lcom/android/server/pm/wtn/zta;->you:Lcom/android/server/pm/wtn/zta$zta;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/wtn/zta$zta;->you(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_9
    sget-boolean v12, Lcom/android/server/pm/wtn/zta;->tsu:Z

    if-eqz v12, :cond_a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "try creating allowed refined perm cache for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v12, Lcom/android/server/pm/wtn/zta$zta;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v10, v3, v11}, Lcom/android/server/pm/wtn/zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v12, v0, Lcom/android/server/pm/wtn/zta;->you:Lcom/android/server/pm/wtn/zta$zta;

    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x4

    if-ge v12, v13, :cond_b

    return v8

    :cond_b
    aget-object v12, v11, v8

    const-string v14, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkPEAxZKJ0SSQRxlUCFbK4GiOH2OcwN5wRls3d5mogetljPRlKkFWOwyklFFG7tMICH0qcLWWtTEnIXVr++VqrPzK7UAzkWBw59nEZ7s82qq91Qe9seaPcrzS4V0RMatgLc5HmoDx/9Wu1zh99JzT2r9nuWNf2/dRgf2bZO92vq7nPEwgF1hstjWHITEYx3dqY+G+DoOIurk33/E+Z60laVZFfe1OHRnhO71zuzVth1Z1K4oNPmTSsvUpTCaS9yBz73bJlrMMen0Gzyn5dx7Rk4WATnM4rougsR3OUApquJEXD2dDgJHRu20Bp95R8/0pXtOt+00QQcxVxRbsTw/15wIDAQAB"

    invoke-static {v12, v14}, Lcom/android/server/pm/gck/you;->tsu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to decrypt permission-key for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with key as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v3, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/server/pm/zta;->tsu()Lcom/android/server/pm/zta;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const-string v7, "SHA1"

    invoke-virtual {v15, v12, v7, v8}, Lcom/android/server/pm/zta;->you([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad permission-key for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not equal to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aget-object v12, v11, v5

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v12, ": "

    const-string v14, "permission-key is not suitable for "

    if-nez v7, :cond_e

    aget-object v0, v11, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    aget-object v5, v11, v6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v15, v8

    :goto_5
    if-ge v15, v7, :cond_11

    aget-object v13, v5, v15

    invoke-static {v1, v13}, Lcom/android/server/pm/wtn/zta;->sis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/4 v5, 0x1

    goto :goto_6

    :cond_f
    sget-boolean v16, Lcom/android/server/pm/wtn/zta;->tsu:Z

    if-eqz v16, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg cert not match: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v13, 0x4

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_12

    const/4 v5, 0x3

    aget-object v0, v11, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v11

    const/4 v7, 0x4

    if-le v6, v7, :cond_17

    aget-object v6, v11, v7

    const-string v8, "extras:"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v8, v11, v7

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    move v13, v9

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_7
    sget-object v14, Lcom/android/server/pm/wtn/zta;->cno:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v9, v14, :cond_17

    add-int/lit8 v14, v12, 0x1

    mul-int/lit8 v15, v14, 0x4

    if-gt v15, v9, :cond_14

    const/4 v15, 0x1

    add-int/lit8 v13, v8, -0x1

    if-lt v12, v13, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    move v13, v12

    move v12, v14

    :cond_14
    if-gez v13, :cond_15

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :cond_15
    rem-int/lit8 v14, v9, 0x4

    const/4 v15, 0x1

    shl-int v14, v15, v14

    and-int/2addr v14, v13

    if-eqz v14, :cond_16

    sget-object v14, Lcom/android/server/pm/wtn/zta;->cno:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_17
    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    array-length v6, v11

    const/4 v7, 0x4

    if-ne v6, v7, :cond_18

    const-string v6, "low_perm_group"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    new-instance v6, Lcom/android/server/pm/wtn/zta$zta;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v10, v3, v5}, Lcom/android/server/pm/wtn/zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, v0, Lcom/android/server/pm/wtn/zta;->you:Lcom/android/server/pm/wtn/zta$zta;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/pm/wtn/zta$zta;->you(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_19
    :goto_9
    const-string v0, "no meta-data or package name in pkg"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1a
    move v0, v8

    return v0
.end method

.method private zta(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2

    sget p0, Lcom/android/server/pm/wtn/zta;->gck:I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean p0, Lcom/android/server/pm/wtn/zta;->dma:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "OplusPermissionKeyDebug"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public grantSensitivePermissionPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/wtn/zta;->you(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "allow refined permission "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSensitivePermGrantPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
