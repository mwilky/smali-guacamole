.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:Z

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;JJJZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$3:J

    iput-wide p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$4:J

    iput-wide p8, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$5:J

    iput-boolean p10, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$6:Z

    iput p11, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$7:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$3:J

    iget-wide v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$4:J

    iget-wide v7, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$5:J

    iget-boolean v9, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$6:Z

    iget v10, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$DYjq43wQj9C5KMmr2xUNBiq_h1w;->f$7:I

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$startViewCalendarEventInManagedProfile$108$DevicePolicyManagerService(ILjava/lang/String;JJJZI)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
