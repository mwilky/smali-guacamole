.class Lcom/android/server/qbh$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/qbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# static fields
.field public static final bio:I = 0x7

.field public static final bvj:I = 0xf

.field public static final cno:I = 0x5

.field public static final dma:I = 0xb

.field public static final gck:I = 0xa

.field public static final gwm:I = 0x11

.field public static final ibl:I = 0x10

.field public static final igw:I = 0x8

.field public static final kth:I = 0x6

.field public static final oif:I = 0xe

.field public static final qbh:I = 0xd

.field public static final rtg:I = 0x3

.field public static final sis:I = 0x1

.field public static final ssp:I = 0x4

.field public static final tsu:I = 0x2

.field public static final wtn:I = 0x9

.field public static final you:I = 0x0

.field public static final ywr:I = 0xc


# instance fields
.field final synthetic zta:Lcom/android/server/qbh;


# direct methods
.method constructor <init>(Lcom/android/server/qbh;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const-string v3, "push notification exception:"

    const/4 v6, 0x2

    const-string v8, "reverse_charge_failed"

    const-string v10, "bedtime_mode_custom_end_time"

    const-string v11, "bedtime_mode_custom_start_time"

    const-string v12, "bedtime_mode_auto_mode"

    const/4 v15, 0x4

    const-wide/16 v4, 0x0

    const-string v14, "NYNCG4I0TI"

    const-string v7, "appid"

    const/4 v9, 0x0

    const-string v13, "OnePlusChargingGuarder"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->qbh(Lcom/android/server/qbh;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "reverse_charge_failed:2"

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0, v13, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_c

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reverse_charge"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reverse_charge:"

    goto :goto_0

    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reverse_charge_failed:"

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    iget-object v1, v1, Lcom/android/server/qbh;->ywr:Landroid/os/BatteryManager;

    invoke-virtual {v1, v15}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "manual_bedtime_off"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manual_bedtime_off:"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v13, v3, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_c

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->h(Lcom/android/server/qbh;)V

    goto/16 :goto_c

    :pswitch_5
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const v5, 0x33954bd

    const/4 v6, -0x1

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel notification exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_6
    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->f(Lcom/android/server/qbh;)Landroid/app/Notification;

    move-result-object v9

    if-eqz v9, :cond_19

    :try_start_1
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "android"

    const/4 v7, 0x0

    const v8, 0x33954bd

    const/4 v10, -0x1

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_c

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :pswitch_7
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v12, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v11, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v6, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v6}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v10, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz v1, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xd

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v10, v10, 0xe10

    const/16 v12, 0x3c

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v1

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    cmp-long v10, v10, v4

    if-gez v10, :cond_0

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v10

    const-wide/16 v11, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v10

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v10

    :goto_2
    const-wide/16 v11, 0x3e8

    div-long/2addr v2, v11

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    div-long/2addr v4, v11

    invoke-static {v4, v5}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v3

    if-lez v1, :cond_1

    const-wide/16 v4, 0x1

    invoke-virtual {v10, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_3

    :cond_1
    invoke-static {v10, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    :goto_3
    invoke-static {v10, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v1, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v11

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[quiet mode]sleepStart="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", sleepEnd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mContinueCharingTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    move-object v5, v10

    invoke-static {v3}, Lcom/android/server/qbh;->n(Lcom/android/server/qbh;)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v3

    const-string v9, "alarm"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-static {v1, v3}, Lcom/android/server/qbh;->c(Lcom/android/server/qbh;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    :cond_2
    cmp-long v1, v11, v6

    if-gez v1, :cond_4

    cmp-long v3, v6, v14

    if-gez v3, :cond_4

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->n(Lcom/android/server/qbh;)J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->igw(Lcom/android/server/qbh;)J

    move-result-wide v3

    add-long/2addr v1, v3

    cmp-long v1, v11, v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/qbh;->p(Lcom/android/server/qbh;Z)Z

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->g(Lcom/android/server/qbh;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->m(Lcom/android/server/qbh;)Lcom/android/server/qbh$tsu;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.chargingguarder.close_quietmode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v3, v14, v15, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set a alarm to close quiet mode in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    if-ltz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/qbh;->p(Lcom/android/server/qbh;Z)Z

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.chargingguarder.open_quietmode"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v4, v11, v12, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set a alarm to open quiet mode in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_5
    cmp-long v1, v14, v6

    if-gtz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/qbh;->p(Lcom/android/server/qbh;Z)Z

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oneplus.chargingguarder.open_quietmode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set a alarm to open quiet mode in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_8
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->irq(Lcom/android/server/qbh;)Lcom/android/server/qbh$you;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->vdw(Lcom/android/server/qbh;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->lqr(Lcom/android/server/qbh;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charging_guarder_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->qeg(Lcom/android/server/qbh;)Lcom/android/server/qbh$sis;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->l(Lcom/android/server/qbh;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->lqr(Lcom/android/server/qbh;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v12}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->qeg(Lcom/android/server/qbh;)Lcom/android/server/qbh$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->lqr(Lcom/android/server/qbh;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->qeg(Lcom/android/server/qbh;)Lcom/android/server/qbh$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->lqr(Lcom/android/server/qbh;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->qeg(Lcom/android/server/qbh;)Lcom/android/server/qbh$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->lqr(Lcom/android/server/qbh;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reverse_wireless_charging_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->qeg(Lcom/android/server/qbh;)Lcom/android/server/qbh$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->lqr(Lcom/android/server/qbh;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reverse_wireless_disable_reason"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->qeg(Lcom/android/server/qbh;)Lcom/android/server/qbh$sis;

    move-result-object v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_c

    :pswitch_9
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/qbh$rtg;->sis:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total_connected_duration_secs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/qbh$rtg;->tsu:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total_suspended_duration_secs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->bio(Lcom/android/server/qbh;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "optimized_charging"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v3}, Lcom/android/server/qbh;->v()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "full_charge_capacity"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/qbh$rtg;->rtg:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "totalSusConChargingDurSecs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/qbh$rtg;->ssp:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "totalSusDisconnectedDurSecs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0xee

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v3}, Lcom/android/server/qbh;->u()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dual_cell_voltage_diff"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->bud(Lcom/android/server/qbh;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wireless_charging_type"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->veq(Lcom/android/server/qbh;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unaligned_charging"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->cjf(Lcom/android/server/qbh;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total_charging"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wireless_charging_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->bud(Lcom/android/server/qbh;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", unaligned_charging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->veq(Lcom/android/server/qbh;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", total_charging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->cjf(Lcom/android/server/qbh;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/server/qbh;->les(Lcom/android/server/qbh;I)I

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/qbh;->cgv(Lcom/android/server/qbh;I)I

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3, v4}, Lcom/android/server/qbh;->ear(Lcom/android/server/qbh;I)I

    iget-object v3, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v3}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v13, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/qbh$rtg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", optimized_charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->bio(Lcom/android/server/qbh;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/qbh$rtg;->ssp()V

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v0}, Lcom/android/server/qbh;->E()V

    goto/16 :goto_c

    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0, v1}, Lcom/android/server/qbh;->d(Lcom/android/server/qbh;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v9

    if-eqz v9, :cond_19

    :try_start_2
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "android"

    const/4 v7, 0x0

    const v8, 0x33954bd

    const/4 v10, -0x1

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_c

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_b
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/qbh$rtg;->sis()V

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/qbh$rtg;->rtg()V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v1}, Lcom/android/server/qbh;->kth()V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/qbh;->o(Lcom/android/server/qbh;J)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->n(Lcom/android/server/qbh;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "opcg_recover_charge_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    iget-object v1, v1, Lcom/android/server/qbh;->ywr:Landroid/os/BatteryManager;

    invoke-virtual {v1, v15}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "manual_optimised_off"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manual_optimised_off:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->e(Lcom/android/server/qbh;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v13, v3, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_7
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->l(Lcom/android/server/qbh;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_6

    :pswitch_c
    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/qbh$rtg;->you()V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    :cond_8
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v1}, Lcom/android/server/qbh;->kth()V

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->m(Lcom/android/server/qbh;)Lcom/android/server/qbh$tsu;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/qbh$rtg;->tsu()V

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/qbh$rtg;->rtg()V

    goto/16 :goto_c

    :pswitch_d
    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v0}, Lcom/android/server/qbh;->tsu()V

    goto/16 :goto_c

    :pswitch_e
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/qbh$rtg;->rtg()V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v1}, Lcom/android/server/qbh;->kth()V

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/qbh;->k(Lcom/android/server/qbh;I)I

    :cond_9
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->l(Lcom/android/server/qbh;)Z

    move-result v1

    if-eqz v1, :cond_19

    :goto_6
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/qbh;->p(Lcom/android/server/qbh;Z)Z

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v0}, Lcom/android/server/qbh;->m(Lcom/android/server/qbh;)Lcom/android/server/qbh$tsu;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    :pswitch_f
    const/16 v3, 0x9

    if-nez v2, :cond_a

    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_8

    :cond_a
    const/4 v7, 0x3

    if-eq v2, v7, :cond_c

    if-ne v2, v3, :cond_b

    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v2}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    iget-object v2, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    iget-object v2, v2, Lcom/android/server/qbh;->ywr:Landroid/os/BatteryManager;

    invoke-virtual {v2, v15}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/qbh$rtg;->kth(J)V

    const/4 v7, 0x1

    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isCharging:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v9}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v8}, Lcom/android/server/qbh;->gck(Lcom/android/server/qbh;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    sub-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v12, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v12}, Lcom/android/server/qbh;->dma(Lcom/android/server/qbh;)Z

    move-result v12

    if-eqz v12, :cond_d

    return-void

    :cond_d
    if-eqz v7, :cond_e

    const/16 v7, 0x50

    if-lt v2, v7, :cond_e

    const/16 v7, 0x64

    if-ge v2, v7, :cond_e

    iget-object v7, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v7}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v7

    if-ne v7, v6, :cond_e

    iget-object v6, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v6}, Lcom/android/server/qbh;->n(Lcom/android/server/qbh;)J

    move-result-wide v6

    cmp-long v6, v8, v6

    if-gtz v6, :cond_f

    :cond_e
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_17

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    :cond_f
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    iget-object v1, v1, Lcom/android/server/qbh;->ywr:Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v6

    const-wide/16 v16, -0x1

    cmp-long v1, v6, v16

    if-eqz v1, :cond_10

    add-long v16, v6, v10

    goto :goto_9

    :cond_10
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->ivd(Lcom/android/server/qbh;)J

    move-result-wide v16

    add-long v16, v16, v10

    :goto_9
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->l(Lcom/android/server/qbh;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const-string v3, "/sys/class/power_supply/wireless/online"

    invoke-virtual {v1, v3}, Lcom/android/server/qbh;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->ivd(Lcom/android/server/qbh;)J

    move-result-wide v16

    add-long v16, v16, v10

    :cond_11
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->gck(Lcom/android/server/qbh;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->a(Lcom/android/server/qbh;)J

    move-result-wide v18

    add-long v10, v10, v18

    sub-long v18, v10, v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    add-long v20, v20, v16

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v22

    cmp-long v1, v20, v22

    if-lez v1, :cond_13

    const-string v1, "because of the next wake up alarm coming"

    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v0}, Lcom/android/server/qbh;->kth()V

    :cond_12
    return-void

    :cond_13
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v20

    const-wide v22, 0x7fffffffffffffffL

    cmp-long v1, v20, v22

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v20, v20, v22

    add-long v20, v20, v14

    sub-long v16, v20, v16

    cmp-long v1, v16, v4

    if-lez v1, :cond_14

    cmp-long v1, v20, v10

    if-gez v1, :cond_14

    const-string v1, "alarm comes first, so need to change end time"

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    move-wide/from16 v1, v16

    move-wide/from16 v4, v20

    move-wide v10, v4

    goto :goto_a

    :cond_14
    move v3, v2

    move-wide/from16 v1, v18

    move-wide/from16 v4, v20

    goto :goto_a

    :cond_15
    move v3, v2

    move-wide/from16 v1, v18

    :goto_a
    new-instance v12, Ljava/text/SimpleDateFormat;

    move/from16 v16, v3

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",startTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v8, v14, v8

    if-ltz v8, :cond_18

    cmp-long v8, v14, v1

    if-gtz v8, :cond_18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeChargeTimeRemaining:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",end:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",alarmEnd:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v4}, Lcom/android/server/qbh;->tsu()V

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->l(Lcom/android/server/qbh;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const-string v5, "/sys/class/power_supply/wireless/online"

    invoke-virtual {v4, v5}, Lcom/android/server/qbh;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->m(Lcom/android/server/qbh;)Lcom/android/server/qbh$tsu;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/qbh;->p(Lcom/android/server/qbh;Z)Z

    :cond_16
    invoke-static {}, Lcom/android/server/qbh$rtg;->zta()Lcom/android/server/qbh$rtg;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/qbh$rtg;->bio(J)V

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->m(Lcom/android/server/qbh;)Lcom/android/server/qbh$tsu;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    const-string v3, "disable Charging and send notification"

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "net.oneplus.charingguarder.intent.OPCG"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->i(Lcom/android/server/qbh;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v4, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v4}, Lcom/android/server/qbh;->b(Lcom/android/server/qbh;)Landroid/app/AlarmManager;

    move-result-object v4

    invoke-virtual {v4, v6, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_b

    :cond_17
    move/from16 v16, v2

    :cond_18
    :goto_b
    iget-object v1, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-static {v1}, Lcom/android/server/qbh;->j(Lcom/android/server/qbh;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    move/from16 v2, v16

    const/16 v1, 0x3c

    if-gt v2, v1, :cond_19

    const-string v1, "level is lower than 60, should enable charging"

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/qbh$tsu;->zta:Lcom/android/server/qbh;

    invoke-virtual {v0}, Lcom/android/server/qbh;->kth()V

    :cond_19
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method