.class public Lcom/android/systemui/statusbar/phone/ClockController;
.super Ljava/lang/Object;
.source "ClockController.java"


# instance fields
.field public mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mRightClock:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 21
    const-string v0, "clock_center"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 22
    const-string v0, "clock"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 23
    const-string v0, "clock_right"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->updateActiveClock()V

    .line 25
    return-void
.end method

.method private isLandscape()Z
    .registers 3

    .line 117
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public getClock()Lcom/android/systemui/statusbar/policy/Clock;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method public hideClock()V
    .registers 3

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 94
    return-void
.end method

.method public setCenterClockPadding()V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 102
    .local v0, "clock":Lcom/android/systemui/statusbar/policy/Clock;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-ne v1, v0, :cond_26

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_26

    .line 105
    const-string v2, "status_clock"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->isLandscape()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 107
    const/16 v2, -0xa

    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setPadding(IIII)V

    goto :goto_26

    .line 109
    :cond_21
    const/16 v2, 0xd2

    invoke-virtual {v0, v3, v3, v2, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setPadding(IIII)V

    .line 114
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_26
    :goto_26
    return-void
.end method

.method public updateActiveClock()V
    .registers 5

    .line 28
    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 29
    .local v0, "i":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 31
    if-eqz v3, :cond_f

    .line 32
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 34
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_16

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 37
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_8e

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto/16 :goto_8e

    .line 40
    :cond_1f
    if-ne v0, v1, :cond_3b

    .line 41
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 42
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v3, :cond_2c

    .line 43
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 45
    :cond_2c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v3, :cond_33

    .line 46
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 48
    :cond_33
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_8e

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_8e

    .line 52
    :cond_3b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_57

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_48

    .line 55
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 57
    :cond_48
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_4f

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 60
    :cond_4f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_8e

    .line 61
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_8e

    .line 63
    :cond_57
    const/4 v3, 0x3

    if-ne v0, v3, :cond_77

    .line 64
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 65
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v3, :cond_65

    .line 66
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 68
    :cond_65
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v3, :cond_6c

    .line 69
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 71
    :cond_6c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v2, :cond_73

    .line 72
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 74
    :cond_73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->setCenterClockPadding()V

    goto :goto_8e

    .line 76
    :cond_77
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 77
    if-eqz v3, :cond_80

    .line 78
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 80
    :cond_80
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_87

    .line 81
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 83
    :cond_87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mCenterClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_8e

    .line 84
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 87
    :cond_8e
    :goto_8e
    return-void
.end method
