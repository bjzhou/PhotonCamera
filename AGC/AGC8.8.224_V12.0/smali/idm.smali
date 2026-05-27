.class public final synthetic Lidm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lige;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lilj;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liof;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liqu;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lixz;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmgf;I)V
    .locals 0

    iput p2, p0, Lidm;->b:I

    iput-object p1, p0, Lidm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget p1, p0, Lidm;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Lmgf;

    iget-boolean v1, p1, Lmgf;->d:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lmgf;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Lmgf;

    iget-boolean v1, p1, Lmgf;->f:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lmgf;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101035b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p1, Lmgf;->e:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v2, p1, Lmgf;->f:Z

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Lixz;

    iget-object p1, p1, Lixz;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->u()Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Lixz;

    iget-object p1, p1, Lixz;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->v()Z

    return-void

    :pswitch_2
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Liqu;

    invoke-virtual {p1}, Liqu;->f()V

    iget-object p1, p1, Liqu;->g:Lirc;

    invoke-virtual {p1, v0}, Liqw;->a(Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Liof;

    iget-object p1, p1, Liof;->b:Lini;

    invoke-virtual {p1}, Linf;->c()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Liof;

    iget-object p1, p1, Liof;->a:Liod;

    invoke-virtual {p1}, Linx;->d()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Liof;

    iget-object v0, p1, Liof;->a:Liod;

    invoke-virtual {v0}, Linx;->a()V

    iget-object p1, p1, Liof;->b:Lini;

    invoke-virtual {p1}, Linf;->b()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lilj;

    iget-object v1, v0, Lilj;->h:Lgxi;

    invoke-virtual {v1, p1}, Lgxi;->h(Lgxm;)V

    iget-object p1, v0, Lilj;->d:Lell;

    iget-object v1, v0, Lilj;->k:Licf;

    invoke-interface {p1, v1}, Lell;->g(Lelk;)V

    iget-object p1, v0, Lilj;->f:Lgzn;

    sget-object v1, Lgzd;->ae:Lgzt;

    iget-wide v2, v0, Lilj;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v3, v0, Lilj;->g:Lfbz;

    const/16 v4, 0x9

    iget-wide v5, v0, Lilj;->l:J

    iget-wide v7, v0, Lilj;->i:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Lfbz;->al(IJJII)V

    iget-object p1, v0, Lilj;->b:Lill;

    invoke-interface {p1}, Lill;->d()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Lige;

    iget-object v0, p1, Lige;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object p1, p1, Lige;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    return-void

    :pswitch_8
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->f:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_9
    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    return-void

    :cond_4
    :goto_1
    iget-boolean p1, p1, Lmgf;->e:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lidm;->a:Ljava/lang/Object;

    check-cast p1, Lmgf;

    invoke-virtual {p1}, Lmgf;->cancel()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
