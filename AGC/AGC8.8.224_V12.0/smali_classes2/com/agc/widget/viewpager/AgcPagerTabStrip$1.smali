.class Lcom/agc/widget/viewpager/AgcPagerTabStrip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/viewpager/AgcPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/viewpager/AgcPagerTabStrip;


# direct methods
.method public constructor <init>(Lcom/agc/widget/viewpager/AgcPagerTabStrip;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/viewpager/AgcPagerTabStrip$1;->this$0:Lcom/agc/widget/viewpager/AgcPagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/viewpager/AgcPagerTabStrip$1;->this$0:Lcom/agc/widget/viewpager/AgcPagerTabStrip;

    iget-object p1, p1, Lcom/agc/widget/viewpager/AgcPagerTitleStrip;->mPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {p1}, Lcom/agc/widget/viewpager/AgcViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/agc/widget/viewpager/AgcViewPager;->setCurrentItem(I)V

    return-void
.end method
