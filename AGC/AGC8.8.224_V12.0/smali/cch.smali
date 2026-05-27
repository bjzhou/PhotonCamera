.class final Lcch;
.super Ljava/lang/Object;

# interfaces
.implements Ljub;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcca;I)V
    .locals 0

    iput p2, p0, Lcch;->b:I

    iput-object p1, p0, Lcch;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcci;I)V
    .locals 0

    iput p2, p0, Lcch;->b:I

    iput-object p1, p0, Lcch;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccl;I)V
    .locals 0

    iput p2, p0, Lcch;->b:I

    iput-object p1, p0, Lcch;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccr;I)V
    .locals 0

    iput p2, p0, Lcch;->b:I

    iput-object p1, p0, Lcch;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lnou;
    .locals 2

    iget v0, p0, Lcch;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lbze;

    iget-object p2, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p2, Lccr;

    iget-object p2, p2, Lccr;->c:Ljvs;

    invoke-interface {p2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lbze;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lccl;

    iget-object p2, p1, Lccl;->a:Ldww;

    invoke-interface {p2}, Ldww;->d()Likz;

    move-result-object p2

    iput-object p2, p1, Lccl;->c:Likz;

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lccl;

    iget-object p1, p1, Lccl;->c:Likz;

    new-instance p2, Lcbp;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v0, v1}, Lcbp;-><init>(Lcch;I[C)V

    invoke-interface {p1, p2}, Likz;->b(Liky;)V

    :cond_0
    return-object v1

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    iget-object p2, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p2, Lcca;

    iput-object v1, p2, Lcca;->e:Lnph;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lcca;

    iget-object p2, p1, Lcca;->a:Ldww;

    invoke-interface {p2}, Ldww;->j()Likz;

    move-result-object p2

    iput-object p2, p1, Lcca;->c:Likz;

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lcca;

    iget-object p1, p1, Lcca;->c:Likz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcbp;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0, v1}, Lcbp;-><init>(Lcch;I[B)V

    invoke-interface {p1, p2}, Likz;->b(Liky;)V

    :cond_1
    return-object v1

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    iget-object p2, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p2, Lcci;

    iput-object v1, p2, Lcci;->d:Lnph;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lcci;

    iget-object p2, p1, Lcci;->a:Ldww;

    invoke-interface {p2}, Ldww;->j()Likz;

    move-result-object p2

    iput-object p2, p1, Lcci;->c:Likz;

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lcci;

    iget-object p1, p1, Lcci;->c:Likz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcbp;

    const/16 v0, 0x8

    invoke-direct {p2, p0, v0}, Lcbp;-><init>(Lcch;I)V

    invoke-interface {p1, p2}, Likz;->b(Liky;)V

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lccr;

    iget-object p2, p1, Lccr;->a:Ldww;

    invoke-interface {p2}, Ldww;->l()Likz;

    move-result-object p2

    iput-object p2, p1, Lccr;->f:Likz;

    iget-object p1, p0, Lcch;->a:Ljava/lang/Object;

    check-cast p1, Lccr;

    iget-object p1, p1, Lccr;->f:Likz;

    new-instance p2, Lcbp;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0, v1}, Lcbp;-><init>(Lcch;I[S)V

    invoke-interface {p1, p2}, Likz;->b(Liky;)V

    :cond_4
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
