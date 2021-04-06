.class public final Lcom/google/android/material/datepicker/CalendarConstraints$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final e:J

.field static final f:J


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/Long;

.field private d:Lcom/google/android/material/datepicker/CalendarConstraints$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/h;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->e:J

    const/16 v0, 0x834

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/h;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->f:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->b(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:Lcom/google/android/material/datepicker/CalendarConstraints$b;

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 2
    .param p1    # Lcom/google/android/material/datepicker/CalendarConstraints;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    sget-wide v0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->f:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;->b(J)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:Lcom/google/android/material/datepicker/CalendarConstraints$b;

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->b(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->c(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->d(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->e(Lcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/CalendarConstraints$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:Lcom/google/android/material/datepicker/CalendarConstraints$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker;->thisMonthInUtcMilliseconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:Ljava/lang/Long;

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->d:Lcom/google/android/material/datepicker/CalendarConstraints$b;

    const-string v2, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-wide v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->a:J

    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->b:J

    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/datepicker/CalendarConstraints$b;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$b;Lcom/google/android/material/datepicker/CalendarConstraints$1;)V

    return-object v1
.end method

.method public b(J)Lcom/google/android/material/datepicker/CalendarConstraints$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarConstraints$a;->c:Ljava/lang/Long;

    return-object p0
.end method
