.class Lcom/agc/widget/lut/LutSelectorLayout$4;
.super Lcom/agc/widget/viewpager/AgcViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$4;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-direct {p0}, Lcom/agc/widget/viewpager/AgcViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout$4;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {v0}, Lcom/agc/widget/lut/LutSelectorLayout;->access$300(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutHeaderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/widget/lut/LutHeaderAdapter;->onPageChange(I)V

    return-void
.end method
