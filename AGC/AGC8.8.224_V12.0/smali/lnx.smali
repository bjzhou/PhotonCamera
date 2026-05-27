.class final Llnx;
.super Ljava/lang/Object;

# interfaces
.implements Llny;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Llnx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lnxx;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Llnx;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lnwn;

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyw;

    iget-object p1, p1, Loyw;->b:Ljava/lang/String;

    return-object p1

    :pswitch_0
    check-cast p1, Lnwn;

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lozv;

    iget-object p1, p1, Lozv;->d:Ljava/lang/String;

    return-object p1

    :pswitch_1
    check-cast p1, Lnwn;

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyc;

    iget-object p1, p1, Loyc;->e:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Lnxx;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Llnx;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lnwn;

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyw;

    iget-object p1, p1, Loyw;->d:Ljava/lang/String;

    return-object p1

    :pswitch_0
    check-cast p1, Lnwn;

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lozv;

    iget-object p1, p1, Lozv;->c:Ljava/lang/String;

    return-object p1

    :pswitch_1
    check-cast p1, Lnwn;

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyc;

    iget-object p1, p1, Loyc;->d:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c(Lnxx;Ljava/lang/Long;)V
    .locals 3

    iget v0, p0, Llnx;->a:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    if-nez p2, :cond_7

    check-cast p1, Lnwn;

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lnwn;->p()V

    goto/16 :goto_0

    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lnwn;

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lozv;

    sget-object p2, Lozv;->u:Lozv;

    iget p2, p1, Lozv;->a:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Lozv;->a:I

    iput-wide v0, p1, Lozv;->b:J

    return-void

    :cond_1
    check-cast p1, Lnwn;

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_2
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lozv;

    sget-object p2, Lozv;->u:Lozv;

    iget p2, p1, Lozv;->a:I

    and-int/lit8 p2, p2, -0x2

    iput p2, p1, Lozv;->a:I

    iput-wide v1, p1, Lozv;->b:J

    return-void

    :pswitch_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lnwn;

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_3
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyc;

    sget-object p2, Loyc;->k:Loyc;

    iget p2, p1, Loyc;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Loyc;->a:I

    iput-wide v0, p1, Loyc;->c:J

    return-void

    :cond_4
    check-cast p1, Lnwn;

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_5
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyc;

    sget-object p2, Loyc;->k:Loyc;

    iget p2, p1, Loyc;->a:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p1, Loyc;->a:I

    iput-wide v1, p1, Loyc;->c:J

    return-void

    :cond_6
    :goto_0
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyw;

    sget-object p2, Loyw;->e:Loyw;

    iget p2, p1, Loyw;->a:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p1, Loyw;->a:I

    iput-wide v1, p1, Loyw;->c:J

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Lnwn;

    iget-object p2, p1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_8
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyw;

    sget-object p2, Loyw;->e:Loyw;

    iget p2, p1, Loyw;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Loyw;->a:I

    iput-wide v0, p1, Loyw;->c:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic d(Lnxx;)V
    .locals 1

    iget v0, p0, Llnx;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lnwn;

    iget-object v0, p1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    goto :goto_0

    :pswitch_0
    check-cast p1, Lnwn;

    iget-object v0, p1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lozv;

    sget-object v0, Lozv;->u:Lozv;

    iget v0, p1, Lozv;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Lozv;->a:I

    sget-object v0, Lozv;->u:Lozv;

    iget-object v0, v0, Lozv;->c:Ljava/lang/String;

    iput-object v0, p1, Lozv;->c:Ljava/lang/String;

    return-void

    :pswitch_1
    check-cast p1, Lnwn;

    iget-object v0, p1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_1
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyc;

    sget-object v0, Loyc;->k:Loyc;

    iget v0, p1, Loyc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Loyc;->a:I

    sget-object v0, Loyc;->k:Loyc;

    iget-object v0, v0, Loyc;->d:Ljava/lang/String;

    iput-object v0, p1, Loyc;->d:Ljava/lang/String;

    return-void

    :cond_2
    :goto_0
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Loyw;

    sget-object v0, Loyw;->e:Loyw;

    iget v0, p1, Loyw;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Loyw;->a:I

    sget-object v0, Loyw;->e:Loyw;

    iget-object v0, v0, Loyw;->d:Ljava/lang/String;

    iput-object v0, p1, Loyw;->d:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
