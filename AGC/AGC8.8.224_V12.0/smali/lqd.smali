.class public final synthetic Llqd;
.super Ljava/lang/Object;

# interfaces
.implements Llqe;


# static fields
.field public static final synthetic a:Llqd;

.field public static final synthetic b:Llqd;

.field public static final synthetic c:Llqd;

.field public static final synthetic d:Llqd;

.field public static final synthetic e:Llqd;

.field public static final synthetic f:Llqd;

.field public static final synthetic g:Llqd;

.field public static final synthetic h:Llqd;

.field public static final synthetic i:Llqd;

.field public static final synthetic j:Llqd;

.field public static final synthetic k:Llqd;

.field public static final synthetic l:Llqd;

.field public static final synthetic m:Llqd;

.field public static final synthetic n:Llqd;

.field public static final synthetic o:Llqd;

.field public static final synthetic p:Llqd;

.field public static final synthetic q:Llqd;

.field public static final synthetic r:Llqd;

.field public static final synthetic s:Llqd;


# instance fields
.field private final synthetic t:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Llqd;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->s:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->r:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->q:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->p:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->o:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->n:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->m:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->l:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->k:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->j:Llqd;

    new-instance v0, Llqd;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->i:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->h:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->g:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->f:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->e:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->d:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->c:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->b:Llqd;

    new-instance v0, Llqd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llqd;-><init>(I)V

    sput-object v0, Llqd;->a:Llqd;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llqd;->t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Llqd;->t:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_0
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_1
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_2
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_3
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_4
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_5
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_6
    check-cast p1, [B

    sget-object v0, Llkl;->d:Llkl;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Llkl;

    return-object p1

    :pswitch_7
    check-cast p1, [B

    sget-object v0, Lljh;->c:Lljh;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lljh;

    return-object p1

    :pswitch_8
    check-cast p1, [B

    sget-object v0, Llji;->e:Llji;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Llji;

    return-object p1

    :pswitch_9
    check-cast p1, [B

    sget-object v0, Lliz;->f:Lliz;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lliz;

    return-object p1

    :pswitch_a
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_b
    check-cast p1, [B

    sget-object v0, Lozu;->d:Lozu;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Lozu;

    return-object p1

    :pswitch_c
    check-cast p1, [B

    sget-object v0, Loya;->b:Loya;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Loya;

    return-object p1

    :pswitch_d
    check-cast p1, [B

    sget-object v0, Loax;->b:Loax;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Loax;

    return-object p1

    :pswitch_e
    check-cast p1, [B

    sget-object v0, Logq;->e:Logq;

    array-length v2, p1

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v0, p1, v1, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    invoke-static {p1}, Lnws;->ae(Lnws;)V

    check-cast p1, Logq;

    return-object p1

    :pswitch_f
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_10
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
