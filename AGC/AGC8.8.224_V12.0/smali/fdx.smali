.class public final Lfdx;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcqo;I)V
    .locals 0

    iput p2, p0, Lfdx;->b:I

    iput-object p1, p0, Lfdx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfdz;I)V
    .locals 0

    iput p2, p0, Lfdx;->b:I

    iput-object p1, p0, Lfdx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnk;I)V
    .locals 0

    iput p2, p0, Lfdx;->b:I

    iput-object p1, p0, Lfdx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bn(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lfdx;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lfdx;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lgnk;->a()Lgnj;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    iget-object p1, p0, Lfdx;->a:Ljava/lang/Object;

    check-cast p1, Lfdz;

    invoke-virtual {p1}, Lfdz;->a()V

    return-void

    :pswitch_1
    check-cast p1, Lhrm;

    iget v0, p1, Lhrm;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lhrm;->f:I

    iget-object v2, p0, Lfdx;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Tracking session not end yet."

    invoke-static {v0, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    check-cast v2, Lcqo;

    iget-object v3, v2, Lcqo;->d:Lfbz;

    const/4 v4, 0x0

    invoke-static {p1}, Lcqo;->h(Lhrm;)Landroid/graphics/PointF;

    move-result-object v5

    iget-wide v6, p1, Lhrm;->e:J

    iget v8, p1, Lhrm;->d:I

    iget-object v0, p1, Lhrm;->a:Lhrg;

    invoke-virtual {v0}, Lhrg;->ordinal()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lfbz;->g(ZLandroid/graphics/PointF;JII)V

    iget-object v0, v2, Lcqo;->j:Lnph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lbze;->w()Lbze;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnph;->e(Ljava/lang/Object;)Z

    iget-wide v3, p1, Lhrm;->e:J

    iget-object v0, v2, Lcqo;->a:Lccg;

    iget-object v5, v2, Lcqo;->g:Lily;

    invoke-virtual {v0, v5}, Lccg;->d(Lily;)Z

    move-result v0

    const-wide/16 v5, 0x7d0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    iget-object p1, v2, Lcqo;->l:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    iget-wide v3, p1, Lhrm;->e:J

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6, v1}, Lcqo;->d(JZ)V

    return-void

    :cond_3
    invoke-virtual {v2}, Lcqo;->e()V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    iget-object p1, p0, Lfdx;->a:Ljava/lang/Object;

    check-cast p1, Lfdz;

    invoke-virtual {p1}, Lfdz;->a()V

    return-void

    :goto_1
    :try_start_0
    iget-object v1, p0, Lfdx;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lgnk;->m(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lgnj;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lgnj;->a()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
