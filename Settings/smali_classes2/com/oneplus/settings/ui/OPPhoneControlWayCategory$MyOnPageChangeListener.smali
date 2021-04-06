.class public Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "OPPhoneControlWayCategory.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Lcom/google/android/material/indicator/PageIndicatorView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/indicator/PageIndicatorView;->setProgress(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$302(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;I)I

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;->this$0:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Lcom/google/android/material/indicator/PageIndicatorView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/PageIndicatorView;->setPosition(I)V

    return-void
.end method
