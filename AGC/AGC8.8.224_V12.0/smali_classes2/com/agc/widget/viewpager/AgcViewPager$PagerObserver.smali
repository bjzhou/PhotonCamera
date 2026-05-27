.class Lcom/agc/widget/viewpager/AgcViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/viewpager/AgcViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/viewpager/AgcViewPager;


# direct methods
.method public constructor <init>(Lcom/agc/widget/viewpager/AgcViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$PagerObserver;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/viewpager/AgcViewPager$PagerObserver;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/viewpager/AgcViewPager$PagerObserver;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcViewPager;->dataSetChanged()V

    return-void
.end method
