.class Lcom/agc/widget/lut/indicator/ViewPagerIndicator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->setItemClickEvent(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/indicator/ViewPagerIndicator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$2;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    iput p2, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$2;->this$0:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    iget v0, p0, Lcom/agc/widget/lut/indicator/ViewPagerIndicator$2;->val$position:I

    invoke-virtual {p1, v0}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->setCurrentItem(I)V

    return-void
.end method
