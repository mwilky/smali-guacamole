.class public Lcom/android/server/hdmi/ActiveSourceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ActiveSourceAction.java"


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private final mDestination:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 0

    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method start()Z
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->getSourceAddress()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/ActiveSourceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->source()Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/ActiveSourceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/ActiveSourceAction;->finish()V

    return v0
.end method
