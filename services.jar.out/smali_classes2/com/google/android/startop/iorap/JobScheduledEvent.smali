.class public Lcom/google/android/startop/iorap/JobScheduledEvent;
.super Ljava/lang/Object;
.source "JobScheduledEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/JobScheduledEvent$Sort;,
        Lcom/google/android/startop/iorap/JobScheduledEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/JobScheduledEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_IDLE_MAINTENANCE:I = 0x0

.field private static final SORT_MAX:I = 0x0

.field private static final TYPE_MAX:I = 0x1

.field public static final TYPE_START_JOB:I = 0x0

.field public static final TYPE_STOP_JOB:I = 0x1


# instance fields
.field public final jobId:I

.field public final sort:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/startop/iorap/JobScheduledEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/JobScheduledEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/JobScheduledEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    iput p2, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    iput p3, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-direct {p0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->checkConstructorArguments()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-direct {p0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->checkConstructorArguments()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/JobScheduledEvent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/JobScheduledEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    return-void
.end method

.method public static createIdleMaintenance(ILandroid/app/job/JobParameters;)Lcom/google/android/startop/iorap/JobScheduledEvent;
    .locals 3

    new-instance v0, Lcom/google/android/startop/iorap/JobScheduledEvent;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/startop/iorap/JobScheduledEvent;-><init>(III)V

    return-object v0
.end method

.method private equals(Lcom/google/android/startop/iorap/JobScheduledEvent;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    iget v1, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/JobScheduledEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/JobScheduledEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/JobScheduledEvent;->equals(Lcom/google/android/startop/iorap/JobScheduledEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "{type: %d, jobId: %d, sort: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/startop/iorap/JobScheduledEvent;->sort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
