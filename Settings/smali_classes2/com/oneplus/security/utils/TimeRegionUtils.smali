.class public Lcom/oneplus/security/utils/TimeRegionUtils;
.super Ljava/lang/Object;
.source "TimeRegionUtils.java"


# direct methods
.method public static getCalendarDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRegionTime(IJ)[J
    .locals 18

    move/from16 v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_6

    invoke-static/range {p1 .. p2}, Lcom/oneplus/security/utils/TimeRegionUtils;->timeMillisToDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/security/utils/TimeRegionUtils;->getCalendarDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v5, v4, [J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v6, v4, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v6, v1, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v4, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v14, -0x1

    invoke-virtual {v6, v4, v14}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v6, v1, v15}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v4, v14}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    const/4 v9, 0x0

    if-le v0, v10, :cond_0

    invoke-static {v6, v12, v11, v1}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v16

    aput-wide v16, v5, v9

    goto :goto_0

    :cond_0
    invoke-static {v6, v7, v8, v0}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v16

    aput-wide v16, v5, v9

    :goto_0
    if-le v0, v13, :cond_1

    invoke-static {v6, v12, v11, v13}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v11

    aput-wide v11, v5, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v13, v0, -0x1

    invoke-static {v6, v12, v11, v13}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v11

    aput-wide v11, v5, v1

    :goto_1
    aget-wide v11, v5, v9

    cmp-long v11, v2, v11

    if-ltz v11, :cond_2

    aget-wide v11, v5, v1

    cmp-long v2, v2, v11

    if-lez v2, :cond_5

    :cond_2
    if-le v0, v4, :cond_3

    invoke-static {v6, v7, v8, v1}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v2

    aput-wide v2, v5, v9

    goto :goto_2

    :cond_3
    invoke-static {v6, v15, v14, v0}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v2

    aput-wide v2, v5, v9

    :goto_2
    if-le v0, v10, :cond_4

    invoke-static {v6, v7, v8, v10}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v2

    aput-wide v2, v5, v1

    goto :goto_3

    :cond_4
    sub-int/2addr v0, v1

    invoke-static {v6, v7, v8, v0}, Lcom/oneplus/security/utils/TimeRegionUtils;->getUnixTime(Ljava/util/Calendar;III)J

    move-result-wide v2

    aput-wide v2, v5, v1

    :cond_5
    :goto_3
    const-wide/32 v2, 0x5265bff

    aget-wide v6, v5, v1

    add-long/2addr v6, v2

    aput-wide v6, v5, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "region:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegionTimeUtils"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reset day should between 1 - 31."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRegionTimeDefault(J)[J
    .locals 14

    const/4 v0, 0x2

    new-array v1, v0, [J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x5

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v11, 0x17

    const/16 v12, 0x3b

    const/16 v13, 0x3b

    move-object v7, v3

    invoke-virtual/range {v7 .. v13}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 p0, 0x0

    aput-wide v4, v1, p0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    aput-wide v2, v1, p1

    return-object v1
.end method

.method private static getUnixTime(Ljava/util/Calendar;III)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static timeMillisToDate(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
