.class public final synthetic Ldeo;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# static fields
.field public static final synthetic a:Ldeo;

.field public static final synthetic b:Ldeo;

.field public static final synthetic c:Ldeo;

.field public static final synthetic d:Ldeo;

.field public static final synthetic e:Ldeo;

.field public static final synthetic f:Ldeo;

.field public static final synthetic g:Ldeo;

.field public static final synthetic h:Ldeo;

.field public static final synthetic i:Ldeo;

.field public static final synthetic j:Ldeo;

.field public static final synthetic k:Ldeo;

.field public static final synthetic l:Ldeo;

.field public static final synthetic m:Ldeo;

.field public static final synthetic n:Ldeo;

.field public static final synthetic o:Ldeo;

.field public static final synthetic p:Ldeo;

.field public static final synthetic q:Ldeo;

.field public static final synthetic r:Ldeo;

.field public static final synthetic s:Ldeo;

.field public static final synthetic t:Ldeo;


# instance fields
.field private final synthetic u:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ldeo;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->t:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->s:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->r:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->q:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->p:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->o:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->n:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->m:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->l:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->k:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->j:Ldeo;

    new-instance v0, Ldeo;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->i:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->h:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->g:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->f:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->e:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->d:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->c:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->b:Ldeo;

    new-instance v0, Ldeo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldeo;-><init>(I)V

    sput-object v0, Ldeo;->a:Ldeo;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldeo;->u:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ldeo;->u:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Loar;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    return-object p1

    :pswitch_1
    check-cast p1, Lgxl;

    invoke-interface {p1}, Lgxl;->i()Lgya;

    move-result-object p1

    sget-object v0, Lgya;->o:Lgya;

    invoke-virtual {p1, v0}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lgej;

    sget-object v0, Lgyp;->a:Lgyp;

    sget-object v0, Lgej;->a:Lgej;

    invoke-virtual {p1}, Lgej;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    sget-object p1, Lgyp;->a:Lgyp;

    iget p1, p1, Lgyp;->f:I

    goto :goto_1

    :pswitch_3
    sget-object p1, Lgyp;->e:Lgyp;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lgyp;->d:Lgyp;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lgyp;->c:Lgyp;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lgyp;->b:Lgyp;

    :goto_0
    iget p1, p1, Lgyp;->f:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lgyp;->a:Lgyp;

    sget-object v0, Lgej;->a:Lgej;

    invoke-static {p1}, Lgyp;->a(I)Lgyp;

    move-result-object p1

    invoke-virtual {p1}, Lgyp;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_2

    goto :goto_2

    :pswitch_8
    sget-object p1, Lgej;->ae:Lgej;

    goto :goto_3

    :pswitch_9
    sget-object p1, Lgej;->ad:Lgej;

    goto :goto_3

    :pswitch_a
    sget-object p1, Lgej;->ac:Lgej;

    goto :goto_3

    :goto_2
    :pswitch_b
    sget-object p1, Lgej;->aa:Lgej;

    :goto_3
    return-object p1

    :pswitch_c
    check-cast p1, Ljava/util/List;

    sget-object p1, Lcjp;->c:Lcjp;

    return-object p1

    :pswitch_d
    check-cast p1, Lcjp;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_f
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lgej;->af:Lgej;

    goto :goto_4

    :cond_0
    sget-object p1, Lgej;->ag:Lgej;

    :goto_4
    return-object p1

    :pswitch_10
    check-cast p1, Lefl;

    return-object p1

    :pswitch_11
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lefz;->c:Lefz;

    goto :goto_5

    :cond_1
    if-eqz v0, :cond_2

    sget-object p1, Lefz;->b:Lefz;

    goto :goto_5

    :cond_2
    sget-object p1, Lefz;->a:Lefz;

    :goto_5
    return-object p1

    :pswitch_12
    check-cast p1, Lcvr;

    iget-object p1, p1, Lcvr;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_13
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p1, Lnbk;->a:Lnbc;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6

    :cond_3
    sget-object p1, Leey;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    sget-object v0, Lnbk;->a:Lnbc;

    const-string v2, "FalconModule"

    invoke-interface {p1, v0, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    const-string v0, "Turning off due to thermals."

    const/16 v2, 0x563

    invoke-static {p1, v0, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_6
    return-object p1

    :pswitch_14
    check-cast p1, Lcvr;

    iget-object p1, p1, Lcvr;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_15
    check-cast p1, Lcvr;

    iget-object p1, p1, Lcvr;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_16
    check-cast p1, Ljava/util/concurrent/CancellationException;

    sget-object v0, Ldvr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x481

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Photos launch was cancelled"

    invoke-interface {p1, v0}, Lnah;->o(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_17
    check-cast p1, Lgej;

    sget-object v0, Lgej;->N:Lgej;

    invoke-virtual {v0, p1}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v1}, Ljcb;->m(I)I

    move-result p1

    goto :goto_7

    :cond_4
    invoke-static {v3}, Ljcb;->m(I)I

    move-result p1

    :goto_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1}, Ljcb;->m(I)I

    move-result v0

    if-ne v0, p1, :cond_5

    sget-object p1, Lgej;->N:Lgej;

    goto :goto_8

    :cond_5
    sget-object p1, Lgej;->O:Lgej;

    :goto_8
    return-object p1

    :pswitch_19
    check-cast p1, Lgxl;

    sget-object v0, Lgya;->o:Lgya;

    invoke-interface {p1}, Lgxl;->i()Lgya;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1a
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Lmer;

    iget-object p1, p1, Lmer;->a:Lnxa;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
