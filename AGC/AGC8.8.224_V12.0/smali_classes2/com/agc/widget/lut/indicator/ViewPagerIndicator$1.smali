.class Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->setItemParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

.field final synthetic val$childCount:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    iput p2, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->val$childCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-static {v1}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->access$000(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->val$childCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-static {v2}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->access$100(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)Lcom/agc/widget/lut/indicator/ViewHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/agc/widget/lut/indicator/ViewHelper;->getTabView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-static {v1}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->access$100(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)Lcom/agc/widget/lut/indicator/ViewHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/agc/widget/lut/indicator/ViewHelper;->setTabWidth(I)V

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-static {v0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->access$100(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)Lcom/agc/widget/lut/indicator/ViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/widget/lut/indicator/ViewHelper;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-static {v0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->access$100(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)Lcom/agc/widget/lut/indicator/ViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    invoke-static {v1}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->access$200(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;)Lcom/agc/widget/lut/indicator/IndicatorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/agc/widget/lut/indicator/IndicatorAdapter;->getIndexView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/widget/lut/indicator/ViewHelper;->setIndicatorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$1;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->access$302(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
