.class Lcom/agc/widget/viewpager/AgcViewPager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/viewpager/AgcViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/viewpager/AgcViewPager;


# direct methods
.method public constructor <init>(Lcom/agc/widget/viewpager/AgcViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/viewpager/AgcViewPager$3;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/viewpager/AgcViewPager$3;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/viewpager/AgcViewPager;->setScrollState(I)V

    iget-object v0, p0, Lcom/agc/widget/viewpager/AgcViewPager$3;->this$0:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {v0}, Lcom/agc/widget/viewpager/AgcViewPager;->populate()V

    return-void
.end method
