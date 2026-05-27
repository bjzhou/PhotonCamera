.class public final Ldje;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcpx;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldjf;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leuo;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfbq;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfhe;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfxk;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgwd;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgwv;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgwy;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhli;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhlq;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhzo;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljuf;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljwo;I)V
    .locals 0

    iput p2, p0, Ldje;->b:I

    iput-object p1, p0, Ldje;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    iget v0, p0, Ldje;->b:I

    const-string v1, "Fail to pause"

    const-string v2, "Failed to generate thumbnail"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Ljwo;

    iget-object v0, v0, Ljwo;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Ljwo;

    iget-object v0, v0, Ljwo;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwj;

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljwj;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lhzo;

    invoke-virtual {p1}, Lhzo;->b()V

    :pswitch_2
    return-void

    :pswitch_3
    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lgwp;

    iget-object p1, p1, Lgwp;->b:Lgwd;

    invoke-virtual {p1}, Lgwd;->t()V

    return-void

    :pswitch_4
    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lgwp;

    iget-object p1, p1, Lgwp;->b:Lgwd;

    invoke-virtual {p1}, Lgwd;->t()V

    return-void

    :pswitch_5
    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lgwd;

    invoke-virtual {p1}, Lgwd;->aa()V

    return-void

    :pswitch_6
    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V

    return-void

    :pswitch_7
    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lkaq;

    const-string v1, "Failed to generate thumbnails"

    invoke-interface {v0, v1, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lkaq;

    invoke-interface {v0, v2, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lkaq;

    invoke-interface {v0, v2, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lkaq;

    const-string v1, "Failed to save image!"

    invoke-interface {v0, v1, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lkaq;

    const-string v1, "Jpeg encoding result failed, not updating remote thumbnail."

    invoke-interface {v0, v1, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_c
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lfhf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x8f5

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfhe;

    iget-object v1, v0, Lfhe;->b:Lfhf;

    iget-object v1, v1, Lfhf;->b:Ljava/lang/String;

    iget v0, v0, Lfhe;->a:I

    const-string v2, "%s: track id %d failed"

    invoke-interface {p1, v2, v1, v0}, Lnah;->x(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    :pswitch_d
    sget-object v0, Lfbq;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "getOptInOptions failed"

    const/16 v2, 0x833

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_e
    sget-object v0, Leuo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Failed to get screenshot."

    const/16 v2, 0x7af

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :pswitch_f
    return-void

    :pswitch_10
    sget-object v0, Ldjf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "CameraFilmstripDataAdapter task failed."

    const/16 v2, 0x37d

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwj;

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljwj;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Ldje;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Ljwo;

    iget-object p1, p1, Ljwo;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto/16 :goto_5

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Ljwo;

    iget-object p1, p1, Ljwo;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwj;

    invoke-interface {v0}, Ljwj;->b()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    check-cast p1, Llql;

    sget-object v0, Llql;->e:Llql;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lhzo;

    iget-object p1, p1, Lhzo;->f:Lgzn;

    sget-object v0, Lgzd;->at:Lgzr;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lhzo;

    iget-object v0, v0, Lhzo;->q:Llqh;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Llql;->d:Llql;

    const/16 v2, 0x9

    if-ne p1, v1, :cond_2

    iget-object p1, v0, Llqh;->c:Ljava/lang/Object;

    iget-object v0, v0, Llqh;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    check-cast p1, Lhrz;

    const/4 v1, -0x1

    invoke-virtual {p1, v2, v1, v0}, Lhrz;->l(IILandroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v1, v0, Llqh;->e:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    const v3, 0x7f0b01a2

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Llql;->ordinal()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const p1, 0x7f14028a

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :sswitch_1
    const p1, 0x7f140289

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object p1, v0, Llqh;->c:Ljava/lang/Object;

    iget-object v0, v0, Llqh;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    check-cast p1, Lhrz;

    const v1, 0x7f140288

    invoke-virtual {p1, v2, v1, v0}, Lhrz;->l(IILandroid/view/View;)V

    :goto_2
    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lhzo;

    invoke-virtual {p1}, Lhzo;->b()V

    return-void

    :pswitch_2
    check-cast p1, Llql;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lhzo;

    iget-object v0, v0, Lhzo;->d:Ljuh;

    new-instance v1, Lhqn;

    invoke-direct {v1, p0, p1, v2, v7}, Lhqn;-><init>(Ldje;Llql;I[B)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    check-cast p1, Lhlv;

    if-eqz p1, :cond_3

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lhlq;

    iput-object p1, v0, Lhlq;->e:Lhlv;

    invoke-virtual {v0}, Lhlq;->b()V

    :cond_3
    return-void

    :pswitch_4
    check-cast p1, Lhlv;

    if-eqz p1, :cond_4

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lhli;

    iput-object p1, v0, Lhli;->e:Lhlv;

    invoke-virtual {v0}, Lhli;->a()V

    :cond_4
    return-void

    :pswitch_5
    check-cast p1, Lhkt;

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lgwp;

    invoke-virtual {p1}, Lgwp;->t()Lgxr;

    move-result-object p1

    invoke-virtual {p1}, Lgxr;->g()V

    return-void

    :pswitch_6
    check-cast p1, Lhkt;

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lgwp;

    invoke-virtual {p1}, Lgwp;->t()Lgxr;

    move-result-object p1

    invoke-virtual {p1}, Lgxr;->g()V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lgwd;

    iput-boolean v6, p1, Lgwd;->l:Z

    return-void

    :cond_5
    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lgwd;

    invoke-virtual {p1}, Lgwd;->aa()V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V

    return-void

    :pswitch_9
    check-cast p1, Lgxb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    iget-object v1, p1, Lgxb;->a:Ljava/lang/Object;

    new-instance v3, Ldje;

    check-cast v0, Lfxk;

    invoke-direct {v3, v0, v2}, Ldje;-><init>(Lfxk;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v1, v3, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    iget-object p1, p1, Lgxb;->b:Ljava/lang/Object;

    new-instance v1, Ldje;

    check-cast v0, Lfxk;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Ldje;-><init>(Lfxk;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, v1, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_a
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Ldje;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lfxk;

    iget-object v3, v3, Lfxk;->e:Lfxl;

    iget v6, v3, Lfxl;->h:I

    if-eqz v6, :cond_8

    if-ne v6, v1, :cond_6

    monitor-exit v0

    return-void

    :cond_6
    iput v4, v3, Lfxl;->h:I

    move-object v1, v2

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->c:Lgvb;

    check-cast v2, Lfxk;

    iget-object v2, v2, Lfxk;->b:Lfte;

    iget-object v2, v2, Lfte;->d:Lklv;

    invoke-interface {v1, v2}, Lgvb;->h(Lklv;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->d:Lkab;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lkab;->e:I

    :goto_3
    iget-object v1, p0, Ldje;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lfxk;

    iget-object v2, v2, Lfxk;->a:Lgxl;

    move-object v3, v1

    check-cast v3, Lfxk;

    iget-object v3, v3, Lfxk;->c:Lgvb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v1

    check-cast v4, Lfxk;

    iget-object v4, v4, Lfxk;->d:Lkab;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Lkab;->e:I

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->b:Lfte;

    iget-object v1, v1, Lfte;->d:Lklv;

    invoke-interface {v3, p1, v4, v1}, Lgvb;->b(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v2, p1, v5}, Lgxl;->X(Landroid/graphics/Bitmap;I)V

    monitor-exit v0

    return-void

    :cond_8
    throw v7

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_b
    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Ldje;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lfxk;

    iget-object v3, v3, Lfxk;->e:Lfxl;

    iget v6, v3, Lfxl;->h:I

    if-eqz v6, :cond_a

    if-ne v6, v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iput v4, v3, Lfxl;->h:I

    move-object v1, v2

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->a:Lgxl;

    move-object v3, v2

    check-cast v3, Lfxk;

    iget-object v3, v3, Lfxk;->c:Lgvb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lfxk;

    iget-object v2, v2, Lfxk;->b:Lfte;

    iget-object v2, v2, Lfte;->d:Lklv;

    invoke-interface {v3, p1, v5, v2}, Lgvb;->b(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v1, p1}, Lgxl;->Y(Landroid/graphics/Bitmap;)V

    monitor-exit v0

    return-void

    :cond_a
    throw v7

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_c
    check-cast p1, Lfwy;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->e:Lfxl;

    iput v3, v1, Lfxl;->h:I

    iget-object v1, v1, Lfxl;->a:Lkaq;

    const-string v2, "Setting final result"

    invoke-interface {v1, v2}, Lkaq;->h(Ljava/lang/String;)V

    iget-object v1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->e:Lfxl;

    iget-object v1, v1, Lfxl;->i:Ljew;

    iget-object v2, p1, Lfwy;->d:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v1, v2}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    new-instance v1, Lhkt;

    sget-object v2, Lkqi;->c:Lkqi;

    invoke-direct {v1, v2}, Lhkt;-><init>(Lkqi;)V

    iget-object v2, p1, Lfwy;->d:Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-virtual {v1, v2}, Lhkt;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget v2, p1, Lfwy;->c:I

    invoke-static {v2}, Lkab;->b(I)Lkab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhkt;->b(Lkab;)V

    iget-object v2, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v2, Lfxk;

    iget-object v2, v2, Lfxk;->a:Lgxl;

    iget-object p1, p1, Lfwy;->b:[B

    invoke-interface {v2, p1, v1}, Lgxl;->r([BLhkt;)Lnou;

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lfxk;

    iget-object p1, p1, Lfxk;->e:Lfxl;

    iget-object p1, p1, Lfxl;->a:Lkaq;

    const-string v1, "Done saving image"

    invoke-interface {p1, v1}, Lkaq;->h(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :pswitch_d
    check-cast p1, Lfwy;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lfxk;

    iget-object v0, v0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v1, Lfxk;

    iget-object v1, v1, Lfxk;->e:Lfxl;

    iget v1, v1, Lfxl;->h:I

    if-eqz v1, :cond_c

    if-ne v1, v4, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lfwy;->b:[B

    array-length v2, v1

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v2, Lfxk;

    iget-object v2, v2, Lfxk;->a:Lgxl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lfwy;->c:I

    invoke-interface {v2, v1, p1}, Lgxl;->X(Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Lfxk;

    iget-object p1, p1, Lfxk;->e:Lfxl;

    iput v3, p1, Lfxl;->h:I

    monitor-exit v0

    return-void

    :cond_c
    throw v7

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :pswitch_e
    check-cast p1, Landroid/media/MediaFormat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v7, "width"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "height"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    const-string p1, "%d x %d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    const-string p1, "N/A"

    :goto_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v4, Lfhe;

    iget v4, v4, Lfhe;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object v0, v2, v6

    aput-object p1, v2, v3

    const-string p1, "id: %d %s resolution: %s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :pswitch_f
    check-cast p1, Lnaa;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    check-cast v0, Lfbq;

    invoke-virtual {v0, p1}, Lfbq;->b(Lnaa;)V

    return-void

    :pswitch_10
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_e

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Leuo;

    invoke-virtual {v0, p1, v6}, Leuo;->b(Landroid/graphics/Bitmap;Z)V

    :cond_e
    return-void

    :pswitch_11
    check-cast p1, Lcui;

    iget-object v0, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v0, Lcpx;

    iget-object v0, v0, Lcpx;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast v1, Lcpx;

    iput-object p1, v1, Lcpx;->c:Lcui;

    monitor-exit v0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :pswitch_12
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Ldjf;

    iget-object p1, p1, Ldjf;->j:Lnph;

    invoke-virtual {p1, v7}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldje;->a:Ljava/lang/Object;

    check-cast p1, Ldjf;

    iget-object p1, p1, Ldjf;->b:Ldjj;

    invoke-virtual {p1}, Ldjj;->a()V

    return-void

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwj;

    invoke-interface {v0}, Ljwj;->c()V

    goto :goto_5

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
