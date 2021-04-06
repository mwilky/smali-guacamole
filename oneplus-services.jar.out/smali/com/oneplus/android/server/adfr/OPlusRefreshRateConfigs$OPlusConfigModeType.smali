.class public final enum Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPlusConfigModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic cno:[Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

.field public static final enum rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

.field public static final enum sis:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

.field public static final enum ssp:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

.field public static final enum tsu:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

.field public static final enum you:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

.field public static final enum zta:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    const-string v1, "eOPlusConfigModeNone"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    new-instance v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    const-string v1, "eOPlusConfigModeSA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->you:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    new-instance v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    const-string v1, "eOPlusConfigModeSM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->sis:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    new-instance v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    const-string v1, "eOPlusConfigModeOA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->tsu:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    new-instance v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    const-string v1, "eOPlusConfigModeOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    new-instance v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    const-string v1, "eOPlusConfigModeMAX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->ssp:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    sget-object v8, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->zta:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->you:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->sis:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->tsu:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->rtg:Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->cno:[Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->cno:[Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;

    return-object v0
.end method


# virtual methods
.method public zta()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateConfigs$OPlusConfigModeType;->value:I

    return p0
.end method
